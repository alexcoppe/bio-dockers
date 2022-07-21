#!/bin/bash

AVAILABLE_COMMANDS=("hisat2", "hisat2-align-s", "hisat2-align-l", "hisat2_extract_splice_sites.py", "hisat2_extract_exons.py", "hisat2-build")

/hisat2/$1 ${*:2:$#}
