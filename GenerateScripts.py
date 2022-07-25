from Functions import *

args = getArgs()
SpeciesID = getListofFastaFilesFromFolders(args.CleanReadsFolder)


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

if not args.DontMakeFolders:
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

    if os.path.exists(args.GATKOutputFolder):
        if not args.Overwrite:
            overwrite = input('GATK output folder already found, do you wish to overwrite? Y/N  ')
        else:
            overwrite= 'Y'
        if overwrite == 'Y':
            os.rmdir(args.GATKOutputFolder)
            os.makedirs(args.GATKOutputFolder)
        else:
            print('Exiting')
            exit()
    else:
        os.makedirs(args.GATKOutputFolder)


if args.Log:
    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step4(SpeciesID, args.ReferenceAssembly, args.CleanReadsFolder , args.MappingFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 4 took $runtime seconds" >> SecappopLog/runtime.txt \n \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step5(SpeciesID, args.MappingFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 5 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step6(SpeciesID, args.MappingFolder, args.PicardJarDirectory, args.PicardFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 6 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step7(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 7 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step8(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 8 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step9(SpeciesID, args.PicardJarDirectory, args.PicardFolder, args.MergedBamsFolder, args.FinalSpeciesName)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 9 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step10(args.MergedBamsFolder, args.FinalSpeciesName)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 10 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step11(args.PicardJarDirectory, args.MappingFolder, args.ReferenceAssembly, args.FinalSpeciesName)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 11 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step12(args.MappingFolder, args.ReferenceAssembly)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 12 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step13(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 13 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step14(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 14 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step15(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 15 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step16(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 16 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step17(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 17 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step18(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 18 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step19(args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 19 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

    file = open('commands.sh', 'a')
    file.write('start=`date +%s.%N`' + '\n')
    file.close()
    step20(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    file = open('commands.sh', 'a')
    file.write('end=`date +%s.%N` ' + '\n' + 'runtime=$( echo "$end - $start" | bc -l )' + '\n' + 'echo "Step 20 took $runtime seconds" >> SecappopLog/runtime.txt \n')
    file.close()

else:
    step4(SpeciesID, args.ReferenceAssembly, args.CleanReadsFolder , args.MappingFolder)
    step5(SpeciesID, args.MappingFolder)
    step6(SpeciesID, args.MappingFolder, args.PicardJarDirectory, args.PicardFolder)
    step7(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
    step8(SpeciesID, args.PicardJarDirectory, args.PicardFolder)
    step9(SpeciesID, args.PicardJarDirectory, args.PicardFolder, args.MergedBamsFolder, args.FinalSpeciesName)
    step10(args.MergedBamsFolder, args.FinalSpeciesName)
    step11(args.PicardJarDirectory, args.MappingFolder, args.ReferenceAssembly, args.FinalSpeciesName)
    step12(args.MappingFolder, args.ReferenceAssembly)
    step13(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step14(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step15(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step16(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step17(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step18(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
    step19(args.FinalSpeciesName, args.GATKOutputFolder)
    step20(args.GATKDirectory, args.MappingFolder, args.ReferenceAssembly, args.MergedBamsFolder, args.FinalSpeciesName, args.GATKOutputFolder)
