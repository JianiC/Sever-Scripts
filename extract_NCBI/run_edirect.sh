#!/bin/bash
## run Batch entrez on server

db=nucleotide 
format=fasta

while read line
do{

}


## run efetch
efetch -db $db -format $format -id $line