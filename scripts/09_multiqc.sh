
#!/usr/bin/env bash
set -e

PROJECT="$HOME/Documents/Klebsiella_WGS"

multiqc "$PROJECT/Results" \
  --outdir "$PROJECT/Results/MultiQC"
