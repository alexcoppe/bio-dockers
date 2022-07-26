#!/bin/bash

AVAILABLE_COMMANDS=("hisat2", "hisat2-align-s", "hisat2-align-l", "hisat2_extract_splice_sites.py", "hisat2_extract_exons.py", "hisat2-build", "hisat2-build-l", "hisat2-build-new", "hisat2-build-s", "hisat2-inspect", "hisat2-inspect-l", "hisat2-inspect-s", "hisat2-repeat", "hisat2_extract_snps_haplotypes_UCSC.py", "hisat2_extract_snps_haplotypes_VCF.py", "hisat2_read_statistics.py", "hisat2_simulate_reads.py")

/hisat2/$1 ${*:2:$#}
