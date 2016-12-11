#!/usr/bin/env bash

module load jje/kent/2014.02.19 2> /dev/null
module load jje/jjeutils/0.1a 2> /dev/null

bioawk -c fastx '{print gc($seq)}' dmel-all-chromosome-r6.13.fasta > dmel-all-chromosome-r6.13.gc.txt

./sequence_gc_distribution dmel-all-chromosome-r6.13.gc.txt
