#!/bin/bash

##change directory
cwd=$(pwd)

R1=$(find . -type f -name '*1.fq')

#echo $R
## get R2 and output file name
for i in $R1
do

	output=$(sed "s/1.fq//g" <<< $i)
	R2=$(sed "s/1.fq/2.fq/g" <<< $i)
	
	#sed -i '/^@/ s#1:# 1:N:0#' $i
	#sed -i '/^@/ s#2:# 2:N:0#' $R2
	
	echo "$(awk '{if ($1 ~ /@/) print $0" 2:N:0"; else print $0;}' $i)" > $i
	echo "$(awk '{if ($1 ~ /@/) print $0" 2:N:0"; else print $0;}' $R2)" >$R2

	#echo $name
	## print IRMA command

	cat ./sub.sh | sed "s#jobname#$output#" > irma_sub.sh
	echo "/home/jc54391/flu-amd/IRMA CoV $i $R2 $output" >> ./irma_sub.sh
	#sbatch ./irma_sub.sh
	echo "$output is submitted"
	
done	
