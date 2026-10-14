
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"

spades.py \
  --pe1-1 "$PROJECT/Data/Trimmed_reads/${ACCESSION}_1.trimmed.fastq.gz" \
  --pe1-2 "$PROJECT/Data/Trimmed_reads/${ACCESSION}_2.trimmed.fastq.gz" \
  -o "$PROJECT/Results/Assembly/${ACCESSION}_spades" \
  -t 4 \
  -m 8
