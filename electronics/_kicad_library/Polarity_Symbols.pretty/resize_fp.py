#!/usr/bin/env python2
"""Just a quick script to scale all numbers in a footprint."""
import re
import sys

MULT = 0
FIXER_RE = re.compile('(?:xy|at|size|thickness) (-?[\d.]+)(?: (-?[\d.]+))?')
# TODO: Update tedit as wel
MODULE_RE = re.compile(r'(\(module |reference )(\S+)')

def fixer(m):
  buf = []
  s = m.group(0)
  p = 0
  for i in range(1, m.lastindex+1):
    buf.append(s[p:m.start(i)-m.start(0)])
    buf.append(str(MULT  * float(m.group(i))))
    p = m.end(i) - m.start(0)

  buf.append(s[p:])
  return  ''.join(buf)


def main(infile, outfile, scale):
    global MULT
    MULT = float(scale)
    fi = open(infile)
    fo = open(outfile, 'w')

    def module_fixer(m):
        return m.group(1) + outfile[:-len('.kicad_mod')]

    for line in fi:
        line = MODULE_RE.sub(module_fixer, line)
        fo.write(FIXER_RE.sub(fixer, line))
    fi.close()
    fo.close()

if __name__ == '__main__':
    main(*sys.argv[1:])
