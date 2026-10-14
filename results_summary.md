# Results Summary

## Project Overview

This project analyses whole-genome sequencing (WGS) data from *Klebsiella pneumoniae* to assess genome assembly quality, genomic features, and antimicrobial resistance (AMR) genes.

- **SRA accession:** SRR9044171
- **Analysis type:** Paired-end short-read WGS
- **Assembly approach:** De novo assembly using SPAdes

## 1. Genome Assembly

| Metric | Result |
|---|---:|
| Assembly size | 5,924,823 bp |
| Number of contigs | 156 |
| N50 | 341,349 bp |
| Largest contig | 561,310 bp |
| GC content | 56.61% |

## 2. Assembly Completeness

BUSCO analysis using the Enterobacterales lineage dataset (`enterobacterales_odb10`) reported:

| BUSCO category | Result |
|---|---:|
| Complete BUSCOs | 98.7% |
| Complete and single-copy | 98.0% |
| Complete and duplicated | 0.7% |
| Fragmented | 0.2% |
| Missing | 1.1% |

These results indicate high estimated genome completeness. They do not, by themselves, establish that the assembly is free from errors or contamination.

## 3. Genome Annotation

Prokka annotation reported:

- 5,545 coding sequences (CDS)
- 18 rRNA features
- 86 tRNA features
- 1 tmRNA feature
- 3 repeat-region features

## 4. Antimicrobial Resistance Genes

AMRFinderPlus identified genes associated with several antimicrobial resistance mechanisms. Examples include:

- **Beta-lactam resistance:** `blaCTX-M-15`, `blaSHV-28`, `blaTEM-1`, `blaOXA-1`
- **Aminoglycoside resistance:** `armA`, `aac(3)-IIe`, `aph(3'')-Ib`, `aph(6)-Id`
- **Quinolone resistance:** `qnrB1`, `aac(6')-Ib-cr`
- **Sulfonamide resistance:** `sul1`, `sul2`
- **Trimethoprim resistance:** `dfrA5`, `dfrA14`
- **Other resistance-associated genes:** `fosA`, `oqxA`, `oqxB`, `mph(A)`, `mph(E)`, `msr(E)`

A partial `catB3` match was also reported and requires cautious interpretation. Resistance-associated gene detection does not directly demonstrate phenotypic resistance; antimicrobial susceptibility testing is needed for that assessment.

## 5. Read Mapping

Mapping reads against the assembled contigs with BWA and SAMtools produced the following results:

| Mapping metric | Result |
|---|---:|
| Total reads reported | 1,389,068 |
| Mapped reads | 1,388,248 |
| Mapping rate | 99.94% |
| Properly paired reads | 99.56% |

The high mapping rate indicates that most reads aligned to the assembly. It does not independently confirm assembly accuracy or exclude contamination.

## 6. Limitations and Next Steps

- The assembly contains multiple contigs, so repetitive regions and some genomic structures may remain unresolved.
- Resistance gene predictions should be interpreted alongside gene
