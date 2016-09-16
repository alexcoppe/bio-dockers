#!/bin/bash

AVAILABLE_COMMANDS=("fastq_to_fasta" "fastx_quality_stats" "fastx_nucleotide_distribution_graph" "fastx_clipper" "fastx_renamer" "fastx_trimmer" "fastx_collapser" "fastx_artifacts_filter" "fastq_quality_filter" "fastx_reverse_complement" "fasta_formatter" "fasta_nucleotide_changer")
if [[ " ${AVAILABLE_COMMANDS[@]} " =~ " $1 " ]]; then
    /usr/local/bin/$1 ${*:2:$#}
else
    echo "$1 is not a valid FASTX-Toolkit command"
fi
