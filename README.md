# seqcappop_scripts

Helps automate steps 4-9 of the sqcap_pop pipeline by mgharvey (https://github.com/mgharvey/seqcap_pop)

The main command to use is GenerateScripts.py, which will create the required folders and generate a .sh file, which can then be run in the console to complete the pipeline. 

Note that this command will assume every sample in the clean reads folder will be included. To exclude certain samples copy the samples you want in a new folder.

The command accepts the arguments


GenerateScripts.py \
  --ContigsToProbesFolder path\to\contigs-to-probes-folder \
  --MappingFolder  path\to\mappingfolder \
  --CleanReadsFolder path\to\CleanReads \
  --PicardJarDirectory path\to\PicardJarDirectory \
  --PicardFolder path\to\CleanReads\PicardFolder  \
  --MergedBamsFolder path\to\CleanReads\MergedBamsFolder \
  --FinalSpeciesName SpeciesName \
  --SingleReference Set if you only have a single reference \
  --SinglePicardJar Set if you only have a picard.jar file and not extra jar files like CleanSam.jar 
  
 
See GenerateScripts.py --help for more info
