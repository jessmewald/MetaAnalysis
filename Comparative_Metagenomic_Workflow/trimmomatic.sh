#!/bin/bash
set -e
cd ../raw_reads/
conda activate trimmomatic
for filename in *_1.fastq.gz
do
    base=$(basename ${filename} _1.fastq.gz)
    trimmomatic PE ${filename} ${base}_2.fastq.gz \
        ${base}_1.trim.fastq.gz ${base}_1.orphaned.fastq.gz \
        ${base}_2.trim.fastq.gz ${base}_2.orphaned.fastq.gz \
        SLIDINGWINDOW:4:20 MINLEN:25 ILLUMINACLIP:TruSeq2-PE.fa:2:30:10
done

cd ../processed_reads/
mkdir trimmed
mkdir unpaired
cd ../raw_reads/
mv *.trim* ../processed_reads/trimmed
mv *.orphaned* ../processed_reads/unpaired 