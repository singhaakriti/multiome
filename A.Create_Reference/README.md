### 0. Download and install cellranger-arc

From the cellranger-arc website, download and install cellranger-arc : https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/downloads/latest

Reference to use cellranger-arc makeref: https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/pipelines/latest/tutorial/mkref

### 0. Download FASTA and GTF files for killifish 
If using Ensembl: https://useast.ensembl.org/Nothobranchius_furzeri/Info/Index \
If using NCBI: https://www.ncbi.nlm.nih.gov/datasets/genome/?taxon=105023 

*For our purposes, the NCBI MZM (Jan 2023) release was the best with our multiome datasets 

## 1. Create a config file: killifish.config
Create a config file with three parameters:
1. genome: the name of the organism's genome (this will be the folder's name in which the reference genome is built)
2. input_fasta: path to the FASTA file 
3. input_gtf: path to the GTF file

It should look something like this: 

`{
    organism: "Killifish"` \
    `genome: ["Killifish"]` \
    `input_fasta: ["/path/to/fasta.fa"]` \
    `input_gtf: ["/path/to/gtffile.gtf"]` \
`}`

## 2. Create a shell script to run cellranger-arc mkref: makeref.sh
Create a shell job script to run cellranger-arc mkref as follows: 

`/path/to/cellranger-arc mkref --config=/path/to/file.config`

Note that makeref takes a few hours to complete. When completed, the created reference genome should be in a folder titled by the config file genome. This genome will be used for future cellranger steps. 

