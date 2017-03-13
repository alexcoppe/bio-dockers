#!/bin/bash

AVAILABLE_COMMANDS=("VarDict" "teststrandbias.R" "var2vcf_valid.pl" "testsomatic.R" "var2vcf_paired.pl")


if [[ " ${AVAILABLE_COMMANDS[@]} " =~ " $1 " ]]; then
    /tmp/VarDictJava/VarDict/$1 ${*:2:$#}
else
    echo "$1 is not a valid VarDict command"
fi
