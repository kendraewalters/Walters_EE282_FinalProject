#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -c fastx ' length($seq) < 100000 { print ">"$name;print $seq } ' dmel-all-chromosome-r6.13.fasta | faSize /dev/stdin
