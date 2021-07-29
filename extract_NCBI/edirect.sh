#!/bin/bash

output=RSV_epitope2002RSVA_G_hp.fasta
input=RSVA_G_gp_accession.txt

db=nucleotide 
format=fasta

while read line
do
	efetch -db $db -format $format -id $line >> $output
done<$input 