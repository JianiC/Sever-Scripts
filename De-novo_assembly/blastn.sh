#!/bin/bash

##change directory
cd /Users/jianichen1/Dropbox/betaCoV/Assembly/denovo/multi-SPAde_0612/SAM

## Get query fasta file 
sample=$(find . -type f -name '*.fasta')

cd /Users/jianichen1/blast/db

for i in $sample
do
	#print sample id
	id=$(sed "s|./||g" <<< $i)
	echo "\n$id" >> blastn.txt
	
	## get the path of the fasta file
	query="/Users/jianichen1/Dropbox/betaCoV/Assembly/denovo/multi-SPAde_0612/SAM/${id}"
	
	
	
	##Blastn
	blastn -query $query -db ref_viruses_rep_genomes -outfmt "6 qseqid stitle sseqid" -max_target_seqs 1 >> blastn.txt
done

echo "records are saved in blastn.txt"

