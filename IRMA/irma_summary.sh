#!/bin/bash

##change directory
cwd=$(pwd)

dir=$(find . -name 'amended_consensus')
#echo "$dir"
for d in $dir
do
	cat $d/*.fa | awk '$0 ~ ">" {print c; c=0;printf substr($0,2,100) "\t"; } $0 !~ ">" {c+=length($0);} END { print c; }' >> sum.txt
	#echo "$d"
	pa=$(echo $d | awk -F/ '{print $2}')
	#echo "$pa"
	find ./$pa -name '*.vcf' | awk -F/ '{print $3}' | cut -f1 -d'.' >> sum.txt

	
done	
## get the consensus sequence length
#cat file.fa | awk '$0 ~ ">" {print c; c=0;printf substr($0,2,100) "\t"; } $0 !~ ">" {c+=length($0);} END { print c; }'