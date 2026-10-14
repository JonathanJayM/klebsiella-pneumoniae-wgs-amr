
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"
ASSEMBLY="$PROJECT/Results/Assembly/${ACCESSION}_spades/contigs.fasta"

mkdir -p "$PROJECT/Results/BUSCO"

busco \
  -i "$ASSEMBLY" \
  -o "${ACCESSION}_BUSCO" \
  -m genome \
  -l enterobacterales_odb10 \
  --out_path "$PROJECT/Results/BUSCO" \
  -c 4
