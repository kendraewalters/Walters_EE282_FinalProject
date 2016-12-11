#!/usr/bin/env bash

bioawk -cgff ' $feature=="exon" { print $end - $start + 1 } ' dmel-all-r6-13.gtf > length_of_exons.txt

./length_of_exons length_of_exons.txt
