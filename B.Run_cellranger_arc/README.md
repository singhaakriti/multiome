# B. Run cellranger-arc  

### 0. Prior to running cellranger-arc, FASTQ files for RNA and ATAC should be downloaded to an `inputs/` folder 

## 1. Create libraries.csv file
Create a libraries CSV file with the path to the FASTQ file, sample name, and type of data. 

- library_CH_DEV.csv : Libraries file for CH_DEV sample 
- library_CH_DIA: Libraries file for CH_DIA sample 
- library_SG_DEV: Libraries file for SG_DEV 
- library_SG_DIA: Libraties file for SG_DIA

## 2. Create a shell job script to run cellranger-arc count: 

Create a shell job script to run cellranger-arc count

- cellranger.sh : shell script to run cellranger-arc count 
- run_cellranger.sh : shell script to run cellranger sh job; to parallelize all samples 


Note that cellranger-arc count will have to be run against each sample individually. \
Also, note that cellranger-arc count takes a long time to run (up to 20 hours sometimes!)

After cellranger-arc count is run, a folder should be created by the name of the sample id. In this folder, there should be an `outs/` folder with all the outputs of cellranger-arc count. In particular, we are most interested in the `filtered_feature_barcode_matrix.h5` output for GEX data, and the `fragments.tsv.gz` & `fragments.tsv.gz.tbi` outputs for ATAC data. 

## outputs

Ouputs/ holds RNA outputs (filtered and raw feature_matrix.h5 files)

