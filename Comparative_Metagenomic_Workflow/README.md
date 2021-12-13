# Comparative Metagenomics Reproducible Workflow

### First, create a Reproducible directory structure

```
mkdir meta_analysis
cd meta_analysis
mkdir scripts raw_reads processed_reads
```

### Next download datasets from the SRA to the raw reads folder following the example below:

```
mkdir meta_analysis
cd meta_analysis
mkdir scripts raw_reads processed_reads
```


[Trimmomatic](https://github.com/usadellab/Trimmomatic) outputs 4 files, where .trim files represent reads that passed filtering, and .orphaned files represent the case where a read survived, but the partner read did not.

Run in PE mode.
The paired end mode will maintain correspondence of read pairs and use the additional information contained in paired reads to better find adapter or PCR primer fragments introduced by the library preparation process.

Check out this useful [tutorial](https://datacarpentry.org/wrangling-genomics/03-trimming/) on Trimmomatic.
