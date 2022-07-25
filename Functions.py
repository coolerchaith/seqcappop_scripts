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
        help='The folder for the Picard outputs'
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
    parser.add_argument(
        '--SinglePicardJar',
        action="store_true",
        help='Optional, add if you need to define picard commands like CleanSam (required if using a newer version of picard that only includes picard.jar)'
    )
    parser.add_argument(
        '--GATKDirectory',
        help='The directory of your GATK.jar file'
    )
    parser.add_argument(
        '--GATKOutputFolder',
        help ='The folder for the GATK outputs'
    )
    parser.add_argument(
        '--Overwrite',
        action="store_true",
        help='Optional, add if you want to override existing outputs automatically'
    )
    parser.add_argument(
        '--DontMakeFolders',
        action="store_true",
        help='Optional, add if you dont want to make new folders'
    )
    parser.add_argument(
        '--Log',
        action="store_true",
        help="Optional, prints the output of each step in a log file"
    )
    args = parser.parse_args()
    if not args.ReferenceAssembly or not args.MappingFolder or not args.CleanReadsFolder or not args.PicardFolder  or not args.MergedBamsFolder  or not args.FinalSpeciesName or not args.GATKDirectory: 
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

def saveToFile(finalCommand, currentStep):
    args = getArgs()
    file = open('commands.sh', 'a')
    if args.Log:
        file.write('{ \n' + finalCommand + '\n}'  + ' 2>&1 | tee ' + 'SecappopLog/' + currentStep + '.txt' + ' && ' + '\n')
    else:
        file.write(finalCommand + ' &&' + '\n')
    file.close()

def gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, currentStep):
    newCommand = command.replace('anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar', GATKDirectory)
    newCommand = newCommand.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
    newCommand = newCommand.replace('/path/to/7_merge-bams', MergedBamsFolder)
    newCommand = newCommand.replace('Genus_species', FinalSpeciesName)
    finalCommand = newCommand.replace('/path/to/8_GATK',GATKOutputFolder)
    saveToFile(finalCommand, currentStep)

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
        saveToFile(finalCommand1, 'step4')

        newCommand2 = command2.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
        newCommand2 = newCommand2.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand2 = newCommand2.replace('/path/to/5-mapping', mappingFolder)
        finalCommand2 = newCommand2.replace('Genus_species', speciesID)
        saveToFile(finalCommand2, 'step4')
        
        newCommand3 = command3.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
        newCommand3 = newCommand3.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand3 = newCommand3.replace('/path/to/5-mapping', mappingFolder)
        finalCommand3 = newCommand3.replace('Genus_species', speciesID)
        saveToFile(finalCommand3, 'step4')

        newCommand4 = command4.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta',ReferenceAssembly)
        newCommand4 = newCommand4.replace('/path/to/2_clean-reads', cleanReadsFolder)
        newCommand4 = newCommand4.replace('/path/to/5-mapping', mappingFolder)
        finalCommand4 = newCommand4.replace('Genus_species', speciesID)
        saveToFile(finalCommand4, 'step4')

def step5(sampleIDs, MappingFolder):
    command1 = 'samtools view -bS /path/to/5-mapping/Genus_species-aln.sam > /path/to/5-mapping/Genus_species-aln.bam'
    for x in sampleIDs:
        speciesID = x

        newCommand1 = command1.replace('/path/to/5-mapping', MappingFolder)
        finalCommand1 = newCommand1.replace('Genus_species', speciesID)
        saveToFile(finalCommand1, 'step5')

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
        saveToFile(finalCommand1, 'step6')

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
        saveToFile(finalCommand1, 'step7')

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
        saveToFile(finalCommand1, 'step8')

def step9(sampleIDs, PicardJarDirectory, PicardFolder, MergedBamsFolder, FinalSpeciesName):
    commandPart1 =  'java -Xmx2g -jar ~/anaconda/jar/MergeSamFiles.jar SO=coordinate AS=true'
    commandPart2 =  'I=/path/to/6_picard/Genus_species-aln_MD.bam'
    commandPart3 =  'O=/path/to/7_merge-bams/Genus_species.bam'
    args = getArgs()
    finalCommand1 = ''

    if args.PicardJarDirectory:
        if args.SinglePicardJar == True:
            newPicardJarDirectory = PicardJarDirectory + ' MergeSamFiles'  
            finalCommandPart1 = commandPart1.replace('anaconda/jar/MergeSamFiles.jar', newPicardJarDirectory)
            #saveToFile(finalCommandPart1, 'step9')
            finalCommand1 = finalCommand1 + finalCommandPart1 + ' '

        else:
            finalCommandPart1 = commandPart1.replace('anaconda/jar/MergeSamFiles.jar', PicardJarDirectory)
            #saveToFile(finalCommandPart1, 'step9')
            finalCommand1 = finalCommand1 + finalCommandPart1 + ' '

    for x in sampleIDs:
        speciesID = x

        newCommandPart2 = commandPart2.replace('/path/to/6_picard', PicardFolder)
        finalCommandPart2 = newCommandPart2.replace('Genus_species', speciesID) 
        #saveToFile(finalCommandPart2,'step9')
        finalCommand1 = finalCommand1 + finalCommandPart2 + ' '
    
    newCommandPart3 = commandPart3.replace('/path/to/7_merge-bams', MergedBamsFolder)
    finalCommandPart3 = newCommandPart3.replace('Genus_species', FinalSpeciesName)
    finalCommand1 = finalCommand1 + finalCommandPart3 + ' '
    saveToFile(finalCommand1,'step9')

def step10(MergedBamsFolder, FinalSpeciesName):
    args = getArgs()
    command1 = 'samtools index 7_merge-bams/Genus_species.bam'

    newCommand1 = command1.replace('7_merge-bams', MergedBamsFolder)
    finalCommand1 = newCommand1.replace('Genus_species', FinalSpeciesName)
    saveToFile(finalCommand1,'step10')



def step11(PicardJarDirectory, mappingFolder, ReferenceAssembly, FinalSpeciesName):
    args = getArgs()
    command1 = 'java -Xmx2g -jar ~/anaconda/pkgs/picard-1.106-0/jar/CreateSequenceDictionary.jar R=/path/to/4_match-contigs-to-probes/Genus_species.fasta O=/path/to/4_match-contigs-to-probes/Genus_species.dict'

    if args.PicardJarDirectory:
        if args.SinglePicardJar == True:
            newPicardJarDirectory = PicardJarDirectory + ' CreateSequenceDictionary'  
            command1 = command1.replace('anaconda/pkgs/picard-1.106-0/jar/CreateSequenceDictionary.jar', newPicardJarDirectory)

        else:
            command1 = command1.replace('anaconda/pkgs/picard-1.106-0/jar/CreateSequenceDictionary.jar', PicardJarDirectory)
    
    #needed to make the dictionary file and reference file be in the same location/have the same name without requiring another argument
    NewReferenceAssembly = ReferenceAssembly.replace('.fasta', '')
    
    newCommand1 = command1.replace('/path/to/4_match-contigs-to-probes/Genus_species', NewReferenceAssembly)
    finalCommand1 = newCommand1.replace('Genus_species', FinalSpeciesName)
    saveToFile(finalCommand1,'step11')


def step12(mappingFolder, ReferenceAssembly):
    args = getArgs()
    command1 = 'samtools faidx /path/to/4_match-contigs-to-probes/Genus_species.fasta'

    finalCommand1 = command1.replace('/path/to/4_match-contigs-to-probes/Genus_species.fasta', ReferenceAssembly)
    saveToFile(finalCommand1, 'step12')

def step13(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T RealignerTargetCreator -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/7_merge-bams/Genus_species.bam  --minReadsAtLocus 7 -o /path/to/8_GATK/Genus_species.intervals'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step13')


def step14(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T IndelRealigner -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/7_merge-bams/Genus_species.bam  -targetIntervals /path/to/8_GATK/Genus_species.intervals -LOD 3.0 -o /path/to/8_GATK/Genus_species_RI.bam'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step14')

def step15(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T UnifiedGenotyper -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/8_GATK/Genus_species_RI.bam -gt_mode DISCOVERY -o /path/to/8_GATK/Genus_species_raw_SNPs.vcf -ploidy 2 -rf BadCigar'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step15')

def step16(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T VariantAnnotator -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/8_GATK/Genus_species_RI.bam -G StandardAnnotation -V:variant,VCF /path/to/8_GATK/Genus_species_raw_SNPs.vcf -XA SnpEff -o /path/to/8_GATK/Genus_species_SNPs_annotated.vcf -rf BadCigar'
    
    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step16')

def step17(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T UnifiedGenotyper -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/8_GATK/Genus_species_RI.bam -gt_mode DISCOVERY -glm INDEL -o /path/to/8_GATK/Genus_species_SNPs_indels.vcf -rf BadCigar'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step17')

def step18(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T VariantFiltration -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -V /path/to/8_GATK/Genus_species_raw_SNPs.vcf --mask /path/to/8_GATK/Genus_species_SNPs_indels.vcf --maskExtension 5 --maskName InDel --clusterWindowSize 10 --filterExpression "MQ0 >= 4 && ((MQ0 / (1.0 * DP)) > 0.1)" --filterName "BadValidation" --filterExpression "QUAL < 30.0" --filterName "LowQual" --filterExpression "QD < 5.0" --filterName "LowVQCBD" -o /path/to/8_GATK/Genus_species_SNPs_no_indels.vcf  -rf BadCigar'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step18')

def step19(FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command1 = ''' cat /path/to/8_GATK/Genus_species_SNPs_no_indels.vcf | grep 'PASS\|^#' > /path/to/8_GATK/Genus_species_SNPs_pass-only.vcf '''

    newCommand1 = command1.replace('/path/to/8_GATK', GATKOutputFolder)
    finalCommand1 = newCommand1.replace('Genus_species', FinalSpeciesName)
    saveToFile(finalCommand1, 'step19')

def step20(GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder):
    args = getArgs()
    command = 'java -Xmx2g -jar ~/anaconda/GenomeAnalysisTK-3.3-0/GenomeAnalysisTK.jar -T ReadBackedPhasing -R /path/to/4_match-contigs-to-probes/Genus_species.fasta -I /path/to/8_GATK/Genus_species_RI.bam --variant /path/to/8_GATK/Genus_species_SNPs_pass-only.vcf -L /path/to/8_GATK/Genus_species_SNPs_pass-only.vcf -o /path/to/8_GATK/Genus_species_SNPs_phased.vcf --phaseQualityThresh 20.0 -rf BadCigar'

    gatkCommands(command, GATKDirectory, mappingFolder, ReferenceAssembly, MergedBamsFolder, FinalSpeciesName, GATKOutputFolder, 'step20')