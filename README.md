# seqcappop_scripts

Helps automate steps 4-9 of the sqcap_pop pipeline by mgharvey (https://github.com/mgharvey/seqcap_pop)

The main command to use is GenerateScripts.py, which accepts the arguments


GenerateScripts.py \
  --ContigsToProbesFolder path\to\contigs-to-probes-folder \
  --MappingFolder  path\to\mappingfolder \
  --CleanReadsFolder path\to\CleanReads \
  --PicardJarDirectory path\to\PicardJarDirectory \
  --PicardFolder path\to\CleanReads\PicardFolder  \
  --MergedBamsFolder path\to\CleanReads\MergedBamsFolder \
  --FinalSpeciesName SpeciesName
 
See GenerateScripts.py --help for more info
