#!/usr/bin/env bash

bioawk -cgff ' $feature=="gene" {print $end - $start + 1} ' dmel-all-r6-13.gtf > length_of_genes.txt

./length_of_genes length_of_genes.txt
