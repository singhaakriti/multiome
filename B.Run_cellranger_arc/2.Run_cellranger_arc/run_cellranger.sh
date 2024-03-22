#!/bin/bash -l
#$ -S /bin/bash   
#$ -cwd  
#$ -j y 

qsub -cwd -m be -l h_rt=34:00:00 -v id="CH_DIA_2015GRZ",library="/wynton/group/singh/multiome/libraries/library_CH_DIA.csv" cellranger.sh
qsub -cwd -m be -l h_rt=34:00:00 -v id="SG_DIA_2015GRZ",library="/wynton/group/singh/multiome/libraries/library_SG_DIA.csv" cellranger.sh
qsub -cwd -m be -l h_rt=34:00:00 -v id="CH_DEV_2015GRZ",library="/wynton/group/singh/multiome/libraries/library_CH_DEV.csv" cellranger.sh
qsub -cwd -m be -l h_rt=34:00:00 -v id="SG_DEV_2015GRZ",library="/wynton/group/singh/multiome/libraries/library_SG_DEV.csv" cellranger.sh
