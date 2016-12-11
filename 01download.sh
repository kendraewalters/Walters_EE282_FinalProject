#!/usr/bin/env bash

curl ftp://ftp.flybase.net/genomes/Drosophila_melanogaster/current/fasta/dmel-all-chromosome-r6.13.fasta.gz -o dmel-all-chromosome-r6.13.fasta.gz

gunzip dmel-all-chromosome-r6.13.fasta.gz
