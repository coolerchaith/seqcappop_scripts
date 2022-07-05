from Functions import *
import os
import argparse

#args = getArgs()
fastaFiles = getListofFastaFilesFromFolders('2_Clean_reads')
#SpeciesID = [x[:-6] for x in fastaFiles]e
SpeciesID = fastaFiles

print(SpeciesID)

dircur = os.listdir('2_Clean_reads')
print(dircur)

isdir = os.path.isdir('2_Clean_reads/Oxylabes_479627')
isfile = os.path.isfile('2_Clean_reads/Oxylabes_479627')
print(isdir)
print(isfile)

isdir = os.path.isdir('2_Clean_reads/reads')
isfile = os.path.isfile('2_Clean_reads/reads')
print(isdir)
print(isfile)
