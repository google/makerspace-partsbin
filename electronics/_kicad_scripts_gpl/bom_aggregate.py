import sys
import csv
import collections

def main(filename):
    r = csv.reader(open(filename))
    next(r) # ignore header for now

    d = collections.defaultdict(lambda: [])

    for line in r:
        key = (line[2], line[1])  # footprint, value
        d[key].append(line[0])

    for k, v in sorted(d.items()):
        print "%d\t%s\t%s\t%s" % (len(v), k[0], k[1], ','.join(v))

if __name__ == '__main__':
    main(*sys.argv[1:])
