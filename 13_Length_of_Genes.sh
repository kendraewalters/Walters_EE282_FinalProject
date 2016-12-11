#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -cgff ' $feature=="gene" {print $end - $start + 1} ' dmel-all-r6-13.gtf > length_of_genes.txt

./length_of_genes length_of_genes.txt
