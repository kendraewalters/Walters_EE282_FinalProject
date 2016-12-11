#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -cgff ' $feature=="mRNA" { print $group } ' dmel-all-r6-13.gtf | tr ";" '\t' | awk ' { print $2 } ' |  sort | uniq -c | awk ' { print $1 } ' > mRNA_per_gene.txt

./transcripts_per_gene mRNA_per_gene.txt
