
mkdir /processed_reads/pear/
cd ../processed_reads/trimmed

for filename in *_1.trim.fastq
do
    base=$(basename ${filename} _1.fastq)
pear -f ${filename} -r ${base}_2.trim.fastq -j 16 -o ${base}
done

for f in *.assembled.fastq
do
base=$(basename ${f} .assembled.fastq)
cat ${f} ${base}.unassembled.reverse.fastq ${base}.unassembled.forward.fastq > ${base}_pear.fastq
done

mv *_pear.fastq /processed_reads/pear/
