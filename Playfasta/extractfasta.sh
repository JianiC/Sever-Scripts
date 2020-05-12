#!/bin/bash

taxa="$1"
fasta="$2"

grep -A1 -w -f $taxa $fasta