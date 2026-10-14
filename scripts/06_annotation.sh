
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"

prokka \
  "$PROJECT/Results/Assembly/${ACCESSION}_spades/contigs.fasta" \
  --outdir "$PROJECT/Results/Annotation/$ACCESSION" \
  --prefix "$ACCESSION" \
  --genus Klebsiella \
  --species pneumoniae \
  --cpus 4
