
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
READS="$PROJECT/Data/Raw_reads"
OUT="$PROJECT/Results/FastQC/raw"

mkdir -p "$OUT"

fastqc -t 4 -o "$OUT" \
  "$READS/SRR9044171_1.fastq.gz" \
  "$READS/SRR9044171_2.fastq.gz"
