#!/bin/bash -l
#$ -S /bin/bash   
#$ -cwd  
#$ -j y 

# for ncbi files: MZM strain
cd /wynton/group/singh/multiome/refgenome/ncbi
/wynton/group/singh/multiome/cellranger-arc/cellranger-arc-2.0.2/bin/cellranger-arc mkref --config=/wynton/group/singh/multiome/refgenome/ncbi/killifish.config


