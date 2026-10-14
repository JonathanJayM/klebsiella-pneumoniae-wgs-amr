
#!/usr/bin/env bash
set -e

conda create -y -n klebsiella_wgs \
  -c conda-forge -c bioconda \
  fastqc fastp multiqc spades quast busco prokka \
  bwa samtools

conda activate klebsiella_wgs
