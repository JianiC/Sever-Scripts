#!/bin/bash

##change directory
cwd=$(pwd)

## get sample id
sample=$(find . -type d -name '*3228*')

bwa index ref.fasta

mkdir quast
mkdir BWA
mkdir SAM

## Assembly evaluation pipeline

for i in $sample
do
	
	id=$(sed "s|./||g" <<< $i)
	output1="./quast/${id}"
	output2="./BWA/ref-${id}.sam"
	output3="./SAM/${id}_mapped.bam"
	
	echo "\n$id" >> sum.txt
	##Basic assembly evaluation with quast
	/Users/jianichen1/quast-5.0.2/quast.py $i/scaffolds.fasta -o $output1
	## #contig
	awk '(NR=='16'){print $3}' $output1/report.txt >> sum.txt
	
	## largest contig
	awk '(NR=='17'){print $3}' $output1/report.txt >> sum.txt
	
	## N50 
	awk '(NR=='20'){print $3}' $output1/report.txt >> sum.txt


	
	##Alignment of SPADES assembly to the reference
	## filter scaffolds by length of 500 bp 
	awk 'BEGIN{RS=">";ORS=""}length($0)>500{print ">"$0}' $i/scaffolds.fasta > $i/scaffolds_filter.fasta
	bwa mem ref.fasta $i/scaffolds_filter.fasta > $output2
	
	##SAMTOOLs to filter the map scaffolds
	#samtools flagstat bwaOutput.bam
	
	samtools view -b -F 4 $output2 > $output3
	#samtools view filename.bam | awk '{OFS="\t"; print ">"$1"\n"$10}' - > filename.fasta
	#only print the mapped contig id
	samtools view $output3 | awk '{OFS="\t"; print ">"$1}' >> sum.txt

done


