from Functions import *
import argparse

#args = getArgs()
fastaFiles = getListofFastaFilesFromFolders('2_Clean_reads')
#SpeciesID = [x[:-6] for x in fastaFiles]
SpeciesID = fastaFiles

print(SpeciesID)