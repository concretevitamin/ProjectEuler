"""usage:
      1. login
      2. python fetch_unresolved.py START_NO END_NO DEST_DIR
"""

import urllib
import os
import sys

__author__ = 'Zongheng Yang'
__date__ = 'Feb 17, 2012'

def main():
    if len(sys.argv) < 3:
        print """usage:
            1. login
            2. python fetch.py START_NO END_NO DEST_DIR"""
        exit(1)

    start = eval(sys.argv[1])
    end = eval(sys.argv[2])
    path = sys.argv[3]

    if os.path.exists(path) == False: os.mkdir(path)

    css = urllib.urlopen("http://projecteuler.net/style_main.css")
    f = open(os.path.join(path, 'style_main.css'), 'w')
    f.write(css.read())
    f.close()

    for i in range(start, end + 1):
        url = "http://projecteuler.net/problem=" + str(i)
        url_handle = urllib.urlopen(url)
        f = open(os.path.join(path, 'p' + str(i) + '.html'), 'w')
        f.write(url_handle.read())
        f.close()

    print "All fetched."

if __name__ == '__main__':
    main()
