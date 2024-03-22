#!/bin/bash -l
#$ -S /bin/bash   
#$ -cwd  
#$ -j y 


cd /wynton/group/singh/multiome

/wynton/group/singh/multiome/cellranger-arc/cellranger-arc-2.0.2/bin/cellranger-arc count --id="$id" \
                       --reference=/wynton/group/singh/multiome/refgenome/ncbi/2015GRZ/Killifish_GRZ_2015 \
                       --libraries="$library" 
                    #    --min-atac-count=832 \
                    #    --min-gex-count=348

[[ -n "$JOB_ID" ]] && qstat -j "$JOB_ID"
