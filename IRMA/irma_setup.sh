#!/bin/bash

##change directory
cwd=$(pwd)

echo "\n" >> ./BetaCoV_sub.sh
## find file end with _R1_001.fastq_gz

R1=$(find . -type f -name '*_R1_001.fastq.gz')
#echo $R1

## get R2 and output file name
for i in $R1
do
	R2=$(sed "s/R1/R2/g" <<< $i)
	#echo $R2
	output=$(sed "s/_R1_001.fastq.gz//g" <<< $i)
	#echo $output
	## print IRMA command
	echo "/home/jc54391/flu-amd/IRMA BetaCoV-pgm $i $R2 $output" >> ./BetaCoV_sub.sh
	
done	