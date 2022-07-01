from Functions import *
import argparse

args = getArgs()
#fastaFiles = getListofFastaFilesFromFilesargs.CleanReadsFolder)
#SpeciesID = [x[:-6] for x in fastaFiles]

SpeciesID = getListofFastaFilesFromFolders(args.CleanReadsFolder)

#contigsToProbeFolder = ('Please type your contigs to probe folder: ')
#cleanReadsFolder = ('Please input the name for a mapping folder: ')
#mappingFolder = input('Please input the name for a mapping folder: ')


if os.path.exists('commands.sh'):
    
    if not args.Overwrite:
        overwrite = input('Command file already found, do you wish to overwrite? Y/N  ')
    else:
        overwrite= 'Y'
    if overwrite == 'Y':
        os.remove('commands.sh')
        file = open('commands.sh', 'w')
        file.write('')
        file.close()
    else:
        print('Exiting')
        exit()
else:
    file = open('commands.sh', 'w')
    file.write('')
    file.close()


if os.path.exists(args.MappingFolder):
    if not args.Overwrite:
        overwrite = input('Mapping Folder already found, do you wish to overwrite? Y/N  ')
    else:
        overwrite= 'Y'

    if overwrite == 'Y':
        os.rmdir(args.MappingFolder)
        os.makedirs(args.MappingFolder)
    else:
        print('Exiting')
        exit()
else:
    os.makedirs(args.MappingFolder)




if os.path.exists(args.PicardFolder):
    if not args.Overwrite:
        overwrite = input('Picard Folder already found, do you wish to overwrite? Y/N  ')
    else:
        overwrite= 'Y'
    if overwrite == 'Y':
        os.rmdir(args.PicardFolder)
        os.makedirs(args.PicardFolder)
    else:
        print('Exiting')
        exit()
else:
    os.makedirs(args.PicardFolder)

if os.path.exists(args.MergedBamsFolder):
    if not args.Overwrite:
        overwrite = input('Merged bams folder already found, do you wish to overwrite? Y/N  ')
    else:
        overwrite= 'Y'
    if overwrite == 'Y':
        os.rmdir(args.MergedBamsFolder)
        os.makedirs(args.MergedBamsFolder)
    else:
        print('Exiting')
        exit()
else:
    os.makedirs(args.MergedBamsFolder)



step4(SpeciesID, args.ReferenceAssembly, args.CleanReadsFolder , args.MappingFolder)
step5(SpeciesID, args.MappingFolder)
step6(SpeciesID, args.MappingFolder, args.PicardJarDirectory, args.PicardFolder)
step7(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
step8(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
step9(SpeciesID, args.PicardJarDirectory, args.PicardFolder, args.MergedBamsFolder, args.FinalSpeciesName)