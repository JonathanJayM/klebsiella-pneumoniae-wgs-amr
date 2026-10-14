
#!/usr/bin/env bash
set -e

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"
ASSEMBLY="$PROJECT/Results/Assembly/${ACCESSION}_spades/contigs.fasta"
OUT="$PROJECT/Results/AMRFinderPlus"

mkdir -p "$OUT"

amrfinder -u

amrfinder \
  -n "$ASSEMBLY" \
  -O Klebsiella_pneumoniae \
  -o "$OUT/${ACCESSION}_amr.tsv"
