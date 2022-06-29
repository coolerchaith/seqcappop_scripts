# seqcappop_scripts

Helps automate steps 4-9 of the sqcap_pop pipeline by mgharvey (https://github.com/mgharvey/seqcap_pop)

The main command to use is GenerateScripts.py, which will create the required folders and generate a .sh file, which can then be run in the console to complete the pipeline. 

It is highly recommended to have only the samples you are going to be processing in your clean reads folder, or make a new folder and only include those samples. Otherwise, the script will assume that each sample in the clean reads folder is going to be analyzed. 

The command accepts the arguments


GenerateScripts.py \
  --ContigsToProbesFolder path\to\contigs-to-probes-folder \
  --MappingFolder  path\to\mappingfolder \
  --CleanReadsFolder path\to\CleanReads \
  --PicardJarDirectory path\to\PicardJarDirectory \
  --PicardFolder path\to\CleanReads\PicardFolder  \
  --MergedBamsFolder path\to\CleanReads\MergedBamsFolder \
  --FinalSpeciesName SpeciesName
 
See GenerateScripts.py --help for more info
