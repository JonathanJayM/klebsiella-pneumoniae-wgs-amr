
#!/bin/bash

PROJECT="$HOME/Documents/Klebsiella_WGS"
ACCESSION="SRR9044171"

mkdir -p "$PROJECT/Data/Trimmed_reads" "$PROJECT/Results/fastp"

fastp \
  --in1 "$PROJECT/Data/Raw_reads/${ACCESSION}_1.fastq.gz" \
  --in2 "$PROJECT/Data/Raw_reads/${ACCESSION}_2.fastq.gz" \
  --out1 "$PROJECT/Data/Trimmed_reads/${ACCESSION}_1.trimmed.fastq.gz" \
  --out2 "$PROJECT/Data/Trimmed_reads/${ACCESSION}_2.trimmed.fastq.gz" \
  --detect_adapter_for_pe \
  --qualified_quality_phred 30 \
  --length_required 50 \
  --thread 4 \
  --html "$PROJECT/Results/fastp/${ACCESSION}_fastp.html" \
  --json "$PROJECT/Results/fastp/${ACCESSION}_fastp.json"
