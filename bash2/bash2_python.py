#!/usr/bin/python

import sys
import os

link = sys.argv[0]
print 'Argument:', link

path = os.readlink( link )
print 'Path', path

rpath = os.path.realpath(path)
print 'Directory', rpath

dirc = os.path.dirname(rpath)
os.chdir(dirc)

f = open("file1", "r")
text = f.read()
print text
f.close()

f = open("file2", "r")
text = f.read()
print text
f.close()