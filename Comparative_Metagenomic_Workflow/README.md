# Comparative Metagenomics Reproducible Workflow

### First, create a Reproducible directory structure

```
mkdir meta_analysis
cd meta_analysis
mkdir scripts raw_reads processed_reads
```

### Download datasets from the SRA to the raw reads folder following the example below:

All datasets used in this analysis exist as parired end read files denoted as "_1" and "_2"

```
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR150/046/SRR15035646/SRR15035646_1.fastq.gz -o AVMG1_1.fastq.gz
curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR150/046/SRR15035646/SRR15035646_2.fastq.gz -o AVMG1_2.fastq.gz
```

### Perform quanity trimming with [Trimmomatic](https://github.com/usadellab/Trimmomatic) according to the trimmomatic.sh file.

Run in PE mode.
The paired end mode will maintain correspondence of read pairs and use the additional information contained in paired reads to better find adapter or PCR primer fragments introduced by the library preparation process.

Trimmomatic outputs 4 files, where .trim files represent reads that passed filtering, and .orphaned files represent the case where a read survived, but the partner read did not.

Need additional help? Check out this useful [tutorial](https://datacarpentry.org/wrangling-genomics/03-trimming/) on Trimmomatic.

### Assign read taxonomy
To generate counts tables of taxonomic assignments, use [Kraken2](https://github.com/DerrickWood/kraken2). 
Use trimmed PE reads as input, kraken2 will autodetect gzip file format, redirect output to processed reads/kraken directory.

