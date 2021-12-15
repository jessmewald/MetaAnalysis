cd ../processed_reads/trimmed/
mkdir unzip_fastq gzip cat_reads
gunzip *.gz

for f in *_1.trim.fastq
do
base=$(basename ${f} _1.trim.fastq)
cat ${f} ${base}_2.trim.fastq > ${base}_cat.fastq
done

mv *_cat.fastq cat_reads/
mv *.fastq unzip_fastq/
mv *.gz gzip/

cd meta_analysis/processed_reads
mkdir superfocus
 
cd path/to/batabase
conda activate super-focus
superfocus -q /processed_reads/trimmed/cat_reads -dir processed_reads/superfocus -a diamond -t 32