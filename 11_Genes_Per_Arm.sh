#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -cgff ' $feature=="gene"  {print $seqname}' dmel-all-r6-13.gtf | sort | uniq -c | sort -rnk1,1 | head -n 7
