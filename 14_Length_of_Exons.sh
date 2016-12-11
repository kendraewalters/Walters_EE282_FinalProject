#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -cgff ' $feature=="exon" { print $end - $start + 1 } ' dmel-all-r6-13.gtf > length_of_exons.txt

./length_of_exons length_of_exons.txt
