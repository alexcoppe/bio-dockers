#!/bin/bash

AVAILABLE_COMMANDS=("annotateBed" "bamToBed" "bamToFastq" "bed12ToBed6" "bedpeToBam" "bedToBam" "bedToIgv" "bedtools" "closestBed" "clusterBed" "commands" "complementBed" "coverageBed" "expandCols" "fastaFromBed" "flankBed" "genomeCoverageBed" "getOverlap" "groupBy" "intersectBed" "linksBed" "mapBed" "maskFastaFromBed" "mergeBed" "multiBamCov" "multiIntersectBed" "nucBed" "pairToBed" "pairToPair" "randomBed" "shiftBed" "shuffleBed" "slopBed" "sortBed" "subtractBed" "tagBam" "unionBedGraphs" "windowBed" "windowMaker")


if [[ " ${AVAILABLE_COMMANDS[@]} " =~ " $1 " ]]; then
    /tmp/bedtools2/bin/$1 ${*:2:$#}
else
    echo "$1 is not a valid bedtools command"
fi
