
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"

quast.py \
  "$PROJECT/Results/Assembly/${ACCESSION}_spades/contigs.fasta" \
  -o "$PROJECT/Results/QUAST/$ACCESSION" \
  -t 4
