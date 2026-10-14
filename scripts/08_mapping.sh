
#!/usr/bin/env bash
set -e

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"
OUT="$PROJECT/Results/Mapping/$ACCESSION"
ASSEMBLY="$PROJECT/Results/Assembly/${ACCESSION}_spades/contigs.fasta"

mkdir -p "$OUT"
cp "$ASSEMBLY" "$OUT/assembly.fasta"

bwa index "$OUT/assembly.fasta"

bwa mem -t 4 "$OUT/assembly.fasta" \
  "$PROJECT/Data/Raw_reads/${ACCESSION}_1.fastq.gz" \
  "$PROJECT/Data/Raw_reads/${ACCESSION}_2.fastq.gz" |
  samtools sort -@ 4 -o "$OUT/${ACCESSION}.sorted.bam" -

samtools index "$OUT/${ACCESSION}.sorted.bam"
samtools flagstat "$OUT/${ACCESSION}.sorted.bam" \
  > "$OUT/${ACCESSION}_flagstat.txt"

samtools coverage "$OUT/${ACCESSION}.sorted.bam" \
  > "$OUT/${ACCESSION}_coverage.txt"
