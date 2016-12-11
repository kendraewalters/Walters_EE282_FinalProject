#!/usr/bin/env bash

module load jje/jjeutils/0.1a 2> /dev/null

bioawk -cgff ' {print $feature}' dmel-all-r6-13.gtf | sort | uniq -c | sort -rnk1,1
