#!/bin/bash
set -e
cd ../processed_reads/
mkdir kraken

cd trimmed/
conda activate bracken

for f in *_1.trim.fastq.gz
do
base=$(basename ${f} _1.trim.fastq.gz)
   kraken2 --db /path/to/kraken_db  --paired ${f} ${base}_2.trim.fastq.gz --use-names --report ../kraken/"${base}"_kraken_report --output ../kraken/"${base}"_kraken.out
done