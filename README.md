# *Klebsiella pneumoniae* WGS and Antimicrobial Resistance Analysis

## Project overview

This project applies whole-genome sequencing (WGS) bioinformatics methods to investigate the genome of *Klebsiella pneumoniae*, with a focus on genome assembly, quality assessment, genome annotation and antimicrobial resistance (AMR) gene detection.

The workflow combines read-quality control, de novo assembly, genome annotation, AMR screening, read mapping and visual inspection of selected genomic regions.

## Research objective

To identify antimicrobial resistance genes in a *Klebsiella pneumoniae* genome and investigate the antibiotic classes with which the detected genes are associated.

## Dataset

- **SRA accession:** SRR9044171
- **Organism:** *Klebsiella pneumoniae*
- **Sequencing data:** Paired-end reads
- **Assembly approach:** De novo assembly

## Bioinformatics workflow

1. Raw-read quality assessment using FastQC.
2. Read trimming and filtering using fastp.
3. Genome assembly using SPAdes.
4. Assembly quality assessment using QUAST and BUSCO.
5. Genome annotation using Prokka.
6. AMR gene screening using NCBI AMRFinderPlus.
7. Read mapping using BWA and SAMtools.
8. Visual inspection of read alignments, coverage and annotations using IGV.

## Preliminary results

The draft assembly contained:

- **Total assembly length:** approximately 5.92 Mb
- **Number of contigs:** 156
- **N50:** 341,349 bp
- **GC content:** 56.61%
- **BUSCO completeness:** 98.7%

AMRFinderPlus identified genes associated with several potential resistance mechanisms, including beta-lactam, aminoglycoside, quinolone, trimethoprim, sulfonamide, macrolide and fosfomycin resistance.

Examples of detected genes included `blaCTX-M-15`, `blaSHV-28`, `blaTEM-1`, `blaOXA-1`, `qnrB1`, `armA`, `fosA`, `sul1` and `sul2`.

These are preliminary genomic findings. Genotypic detection does not by itself confirm phenotypic antibiotic resistance. Gene calls and allele assignments should be reviewed, and phenotypic susceptibility testing is needed to assess actual susceptibility.

## Reproducibility

The repository will contain analysis scripts, tool and parameter documentation, selected quality-control summaries and relevant visualisation notes. Large raw-read and intermediate files will not be uploaded by default.

## Limitations

This is a draft genome assembly. Repeated sequences, fragmented contigs and annotation discrepancies may affect individual gene calls. Results should be interpreted in the context of the sequencing data, database versions and any available laboratory susceptibility results.

## Author

**Jonathan Mutinda**

Bioinformatics interests: microbial genomics, antimicrobial resistance, phage genomics and biotechnology.
