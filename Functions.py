#from gc import is_finalized
import os
import argparse


def getArgs():
    parser = argparse.ArgumentParser(description='Automates repetitive steps from the seqcap_pop pipeline. This command will generate a .sh file with all of the commands for steps 4-9 for each speciment present in the ContigsToProbesFolder')
    parser.add_argument(
        '--ReferenceAssembly',
        help='The folder that output from step 3'
    )
    parser.add_argument(
        '--MappingFolder',
        help='The folder that is output from step 4'
    )
    parser.add_argument(
        '--CleanReadsFolder',
        help='The folder that is output from step 1'
    )
    parser.add_argument(
        '--PicardJarDirectory',
        help='Optional: The directory for your Picard.jar file. Leave blank if your directory matches the seqcap pipeline.'
    )
    parser.add_argument(
        '--PicardFolder',
        help='The folder to output the Picard outputs'
    )
    parser.add_argument(
        '--MergedBamsFolder',
        help='The folder to output the Merged Bam File'
    )
    parser.add_argument(
        '--FinalSpeciesName',
        help='The name for the merged bam file, exclude extensions'
    )
    parser.add_argument(
        '--SingleReference',
        action="store_true",
        help='Optional, add if you are using only a single reference file'
    )
    (
    parser.add_argument(
        '--SinglePicardJar',
        action="store_true",
        help='Optional, add if you need to define picard commands like CleanSam (required if using a newer version of picard that only includes picard.jar)'
    )
    )
    parser.add_argument(
        '--Overwrite',
        action="store_true",
        help='Optional, add if you want to override existing outputs automatically'
    )
    args = parser.parse_args()
    if not args.ReferenceAssembly or not args.MappingFolder or not args.CleanReadsFolder or not args.PicardFolder  or not args.MergedBamsFolder  or not args.FinalSpeciesName: 
        print('missing argument, please fix :)')
        exit()
    return args

def getListofFastaFilesFromFiles(path):
    fastaFiles = []
    for file in os.listdir(path):
        if file.endswith('.fasta'):
            fastaFiles.append(file)
        else:
            print('No fasta files found')
    return fastaFiles

def getListofFastaFilesFromFolders(path):
    fastaFiles = []
    for x in os.listdir(path):
        pathName = path + '/' + x
        if os.path.isdir(pathName):
            fastaFiles.append(x)
    if fastaFiles == []:
        print('No folders found')
    return fastaFiles

def step4(sampleIDs, ReferenceAssembly, cleanReadsFolder, mappingFolder):
    command1 = 'bwa index -a is /path/to/4_match-contigs-to-probes/Genus_species.fasta'
    command2 = 'bwa aln /path/to/4_match-contigs-to-probes/Genus_species.fasta /path/to/2_clean-reads/Genus_species/split-adapter-quality-trimmed/Genus_species-READ1.fastq.gz  > /path/to/5-mapping/Genus_species_read1.sa.sai'
    command3 = 'bwa aln /path/to/4_match-contigs-to-probes/Genus_species.fasta /path/to/2_clean-reads/Genus_species/split-adapter-quality-trimmed/Genus_species-READ2.fastq.gz  > /path/to/5-mapping/Genus_species_read2.sa.sai'
    command4 = 'bwa sampe /path/to/4_match-contigs-to-probes/Genus_species.fasta /path/to/5-mapping/Genus_species_read1.sa.sai /path/to/5-mapping/Genus_species_read2.sa.sai /path/to/2_clean-reads/Genus_species/split-adapter-quality-trimmed/Genus_species-READ1.fastq.gz /path/to/2_clean-reads/Genus_species/split-adapter-quality-trimmed/Genus_species-READ2.fastq.gz > /path/to/5-mapping/Genus_species-aln.sam'
    
    args = getArgs()
    for x in sampleIDs:
        speciesID = x


        newCommand1 = command1.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
        finalCommand1 = newCommand1.replace('/Genus_species.fasta', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand1 + ' &&' + '\n')
        file.close()

        newCommand2 = command2.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
        newCommand2 = newCommand2.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand2 = newCommand2.replace('/path/to/5-mapping', mappingFolder)
        #newCommand2 = newCommand2.replace('/Genus_species.fasta', speciesID)
        finalCommand2 = newCommand2.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand2 + ' &&' + '\n')
        file.close()

        newCommand3 = command3.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
        newCommand3 = newCommand3.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand3 = newCommand3.replace('/path/to/5-mapping', mappingFolder)
        finalCommand3 = newCommand3.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand3 + ' &&' + '\n')
        file.close()

        newCommand4 = command4.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta',ReferenceAssembly)
        newCommand4 = newCommand4.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand4 = newCommand4.replace('/path/to/5-mapping', mappingFolder)
        finalCommand4 = newCommand4.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand4 + ' &&' + '\n')
        file.write('\n')
        file.close()

def step5(sampleIDs, MappingFolder):
    command1 = 'samtools view -bS /path/to/5-mapping/Genus_species-aln.sam > /path/to/5-mapping/Genus_species-aln.bam'
    for x in sampleIDs:
        speciesID = x

        newCommand1 = command1.replace('/path/to/5-mapping', MappingFolder)
        finalCommand1 = newCommand1.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand1 + ' &&' + '\n')
        file.close()

def step6(sampleIDs, MappingFolder, PicardJarDirectory, PicardFolder):
    command1 = 'java -jar ~/anaconda/jar/CleanSam.jar I=/path/to/5-mapping/Genus_species-aln.bam O=/path/to/6_picard/Genus_species-aln_CL.bam VALIDATION_STRINGENCY=SILENT'
    args = getArgs()
    for x in sampleIDs:
        speciesID = x

        if args.PicardJarDirectory: 
            if args.SinglePicardJar == True:
                newPicardJarDirectory = PicardJarDirectory + ' CleanSam'  
                newCommand1 = command1.replace('anaconda/jar/CleanSam.jar', newPicardJarDirectory)
            else:
                newCommand1 = command1.replace('anaconda/jar/CleanSam.jar', PicardJarDirectory)
        


        newCommand1 = newCommand1.replace('/path/to/5-mapping', MappingFolder)
        newCommand1 = newCommand1.replace('/path/to/6_picard', PicardFolder)
        finalCommand1 = newCommand1.replace('Genus_species', speciesID)

        file = open('commands.sh', 'a')
        file.write(finalCommand1 + ' &&' + '\n')
        file.close()

def step7(sampleIDs, PicardJarDirectory, PicardFolder):
    command1 = 'java -Xmx2g -jar ~/anaconda/jar/AddOrReplaceReadGroups.jar I=/path/to/6_picard/Genus_species-aln_CL.bam  O=/path/to/6_picard/Genus_species-aln_RG.bam SORT_ORDER=coordinate RGPL=illumina RGPU=TestXX RGLB=Lib1 RGID=Genus_species RGSM=Genus_species VALIDATION_STRINGENCY=LENIENT'
    args = getArgs()
    for x in sampleIDs:
        speciesID = x

        if args.PicardJarDirectory:
            if args.SinglePicardJar == True:
                newPicardJarDirectory = PicardJarDirectory + ' AddOrReplaceReadGroups'  
                newCommand1 = command1.replace('anaconda/jar/AddOrReplaceReadGroups.jar', newPicardJarDirectory)
            else:
                newCommand1 = command1.replace('anaconda/jar/AddOrReplaceReadGroups.jar', PicardJarDirectory)
        

        newCommand1 = newCommand1.replace('/path/to/6_picard', PicardFolder)
        finalCommand1 = newCommand1.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand1 + ' &&' + '\n')
        file.close()

def step8(sampleIDs, PicardJarDirectory, PicardFolder):
    command1 = 'java -Xmx2g -jar ~/anaconda/jar/MarkDuplicates.jar I=/path/to/6_picard/Genus_species-aln_RG.bam O=/path/to/6_picard/Genus_species-aln_MD.bam METRICS_FILE=/path/to/6_picard/Genus_species.metrics MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=250 ASSUME_SORTED=true REMOVE_DUPLICATES=false'
    args = getArgs()
    
    for x in sampleIDs:
        speciesID = x

        if args.PicardJarDirectory: 
            if args.SinglePicardJar == True:
                newPicardJarDirectory = PicardJarDirectory + ' MarkDuplicates'  
                newCommand1 = command1.replace('anaconda/jar/MarkDuplicates.jar', newPicardJarDirectory)
            elif args.PicardJarDirectory:
                newCommand1 = command1.replace('anaconda/jar/MarkDuplicates.jar', PicardJarDirectory)
    
        newCommand1 = newCommand1.replace('/path/to/6_picard', PicardFolder)
        finalCommand1 = newCommand1.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommand1 + ' &&' + '\n')
        file.close()

def step9(sampleIDs, PicardJarDirectory, PicardFolder, MergedBamsFolder, FinalSpeciesName):
    commandPart1 =  'java -Xmx2g -jar ~/anaconda/jar/MergeSamFiles.jar SO=coordinate AS=true'
    commandPart2 =  'I=/path/to/6_picard/Genus_specie-aln_MD.bam'
    commandPart3 =  'O=/path/to/7_merge-bams/Genus_species.bam'
    args = getArgs()

    if args.PicardJarDirectory:
        if args.SinglePicardJar == True:
            newPicardJarDirectory = PicardJarDirectory + ' MergeSamFiles'  
            finalCommandPart1 = commandPart1.replace('anaconda/jar/MarkDuplicates.jar', newPicardJarDirectory)
            file = open('commands.sh', 'a')
            file.write(finalCommandPart1 + ' \\' + '\n')
            file.close()

        else:
            finalCommandPart1 = commandPart1.replace('anaconda/jar/CleanSam.jar', PicardJarDirectory)
            file = open('commands.sh', 'a')
            file.write(finalCommandPart1 + ' \\' + '\n')
            file.close()


    for x in sampleIDs:
        speciesID = x

        newCommandPart2 = commandPart2.replace('/path/to/6_picard', PicardFolder)
        finalCommandPart2 = newCommandPart2.replace('Genus_species', speciesID)
        file = open('commands.sh', 'a')
        file.write(finalCommandPart2 + ' \\' + '\n')
        file.close()
    
    newCommandPart3 = commandPart3.replace('/path/to/7_merge-bams', MergedBamsFolder)
    finalCommandPart3 = newCommandPart3.replace('Genus_species', FinalSpeciesName)
    file = open('commands.sh', 'a')
    file.write(finalCommandPart3)
    file.close()



        