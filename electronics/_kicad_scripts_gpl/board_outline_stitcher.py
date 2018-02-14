#!/usr/bin/env python2
"""
Connects the disjoint (yet endpoint-overlapping) segments output from pcbnew
into proper paths; then output them as a single path element that contains
multiple subpaths so you can use evenodd in svg to give your board a fill.

1. In pcbnew, "Export SVG" all in one file.
2. You can savely run this on the file.  Its stderr is a path-stitched version.
3. Now find the group that refers to Edge.Cuts, and give it fill-opacity > 0

TODO: use logging instead of print, add a flag
TODO: Write a script that will export pcbnew->svg using custom colors or proper
group ids, to make it easier to apply opacity changes here only to Edge.Cuts.
TODO: Render to DXF using https://pypi.python.org/pypi/dxfwrite/
TODO: Makefile recipe to render to PNG with a checked-in color scheme.
"""

import re
import sys
from lxml import etree

G = '{http://www.w3.org/2000/svg}g'
PATH = '{http://www.w3.org/2000/svg}path'

# Only supports absolute versions, because pcbnew only outputs absolute
PATH_COMMAND_RE = re.compile(r'[MLA][^MLA]+')

def main(args):
  filename = args[0]
  with open(filename, 'rb') as f:
    svg = etree.parse(f)

  strip_unused_groups(svg)
  stitch_paths(svg)

  print etree.tostring(svg)


def strip_unused_groups(svg):
  root = svg.getroot()
  for i in range(len(root)-1, -1, -1):
    if root[i].tag == G:
      if not len(root[i]):
        del root[i]


def stitch_paths(svg):
  """Within a group, replace multiple paths whose endpoints overlap with a single longer path.

  Supports only lines and arcs, and only absolute coordinates.  The fuzziness is
  taken automatically from the line width.

  This algorithm is fairly slow
  """
  root = svg.getroot()

  # Full line width, because if round end, radius*2
  def try_adopt(t, lw):
    for o in orphans:
      if o.check(t, lw):
        print >>sys.stderr, "found", o.check(t, lw), o, t
        o.adopt(t, lw)
        print >>sys.stderr, "  ", o
        break
    else:
      orphans.append(t)

  for elem in root.iter(G):
    width_str = extract_style_attr(elem.get('style'), 'stroke-width')
    if not width_str:
      # Paths that don't have a stroke are ignored; these are definitely not
      # board outlines, so better leave them alone.
      continue
    width = float(width_str)
    # TODO: This can double up on semicolons, which is ugly
    elem.set('style', elem.get('style') + '; fill-rule: evenodd; fill-opacity: 1.0; fill: #f00')

    orphans = []
    count = 0
    for i in range(len(elem)-1, -1, -1):
      if elem[i].tag == PATH:
        try_adopt(Path(elem[i].get('d')), width)
        del elem[i]
        count += 1

    print >>sys.stderr, count, "paths in original", width

    # By here, we've removed all the path children of `elem`.
    # Keep stitching until we no longer improve.  This is n**2 each iteration,
    # but a typical board will require few iterations.
    count = len(orphans)
    while True:
      print >>sys.stderr, len(orphans), "paths"
      old_orphans = orphans
      orphans = []
      for i in old_orphans:
        try_adopt(i, width)
      new_count = len(orphans)
      if count == new_count:
        print >>sys.stderr, "stop"
        break
      count = new_count

    # Explicitly close them, for completeness.  (Why?)
    for o in orphans:
      assert o.cmds[0].startswith('M')
      if distance(o.start_point, o.end_point) < width:
        o.cmds.append("Z")

    # Write it out as a single complicated path, otherwise evenodd doesn't do
    # the magic (?)
    child = etree.SubElement(elem, PATH)
    child.set('d',' '.join(' ' .join(o.cmds) for o in orphans))
    child.tail = "\n"

#
#  Helpers below here.
#  ===========================================
#

def distance(pt1, pt2):
  return ((pt1[0]-pt2[0]) ** 2 + (pt1[1]-pt2[1]) ** 2) ** 0.5

def split_commands(d):
  commands = []
  for i in PATH_COMMAND_RE.findall(d):
    j = i.strip()
    # 'L1 2' same as 'L 1 2'
    if j[1] != ' ':
      j = j[0] + ' ' + j[1:]
    commands.append(j)
  return commands


# This only works with M, L, and A commands.
class Path(object):
  def __init__(self, path_d):
    assert path_d.startswith('M'), path_d
    self.cmds = split_commands(path_d)
    self.set_points()

  def set_points(self):
    # 'M x y ...'
    self.start_point = map(float, self.cmds[0].split()[1:3])
    # '...L x y' or '...A ... x y'
    self.end_point = map(float, self.cmds[-1].split()[-2:])

  def __str__(self):
    return '<%s %s>' % (self.__class__.__name__, self.cmds)

  def check(self, other, epsilon):
    """Returns nonzero if the paths can be joined.

    Args:
      other: a Path object
      epsilon: How close the points must be (e.g. a line width)

    Return value:
      1: self-rev + other
      2: self + other
      3: other + self
      4: self + other-rev

    The values are arbitrary.
    """
    pt1 = other.start_point
    pt2 = other.end_point
    if distance(pt1, self.start_point) < epsilon:
      return 1
    elif distance(pt1, self.end_point) < epsilon:
      return 2
    elif distance(pt2, self.start_point) < epsilon:
      return 3
    elif distance(pt2, self.end_point) < epsilon:
      return 4

    return 0

  def adopt(self, other_path, epsilon):
    """Modify this Path to include the other.

    See check for meaning of epsilon.  Raises Exception if it's not possible."""

    c = self.check(other_path, epsilon)
    if c == 1:
      # flip self, then other
      self.reverse()
      self.cmds.extend(other_path.cmds[1:])
    elif c == 2:
      # self, then other, no flipping
      self.cmds.extend(other_path.cmds[1:])
    elif c == 3:
      # other, then self, no flipping
      tmp = self.cmds[1:]
      self.cmds = other_path.cmds + tmp
    elif c == 4:
      # self, then flip other
      other_path.reverse()
      self.cmds.extend(other_path.cmds[1:])
    else:
      raise Exception("Not close enough")

    self.set_points()

  def reverse(self):
    """Reverses order of commands in this path without changing meaning."""
    # Command and coordinate need to lag by one.
    self.start_point, self.end_point = self.end_point, self.start_point
    new_cmds = []

    prev_cmd = None
    for cmd in self.cmds:
      if cmd.startswith('A'):
        # A rx ry x-axis-rotation large-arc-flag sweep-flag x y
        parts = cmd.split()
        # toggle sweep-flag
        parts[5] = '1' if parts[5] == '0' else '0'
        parts[6] = prev_cmd[-2]
        parts[7] = prev_cmd[-1]
        new_cmds.append(' '.join(parts))
      elif cmd.startswith('L'):
        new_cmds.append('L %s %s' % (prev_cmd[-2], prev_cmd[-1]))
      elif cmd.startswith('M'):
        if prev_cmd:
          new_cmds.append('M %s %s' % (prev_cmd[-2], prev_cmd[-1]))
      prev_cmd = cmd.split()
    new_cmds.append('M %s %s' % (prev_cmd[-2], prev_cmd[-1]))
    self.cmds = new_cmds[::-1]

    self.set_points()

def extract_style_attr(style, a):
  """Quick hack for parsing css styles."""
  for x in style.split(';'):
    if x.strip().startswith(a):
      return x.split(':')[1].strip()

if __name__ == '__main__':
      main(sys.argv[1:])
