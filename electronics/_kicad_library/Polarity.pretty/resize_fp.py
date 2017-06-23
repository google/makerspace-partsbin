#!/usr/bin/env python2
"""Just a quick script to scale all numbers in a footprint."""
import re
import sys

MULT = 0
RE = re.compile('(?:xy|at) (-?[\d.]+) (-?[\d.]+)')


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
    for line in fi:
        fo.write(RE.sub(fixer, line))
    fi.close()
    fo.close()

if __name__ == '__main__':
    main(*sys.argv[1:])
