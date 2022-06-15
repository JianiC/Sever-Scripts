#!/bin/bash

##change directory
cwd=$(pwd)

echo "\n" >> ./BetaCoVS_sub.sh
## find file end with _R1_001.fastq_gz

R1=$(find . -type f -name '*_R1_001.fastq.gz')
#echo $R1

## get R2 and output file name
for i in $R1
do
        R2=$(sed "s/R1/R2/g" <<< $i)
        #echo $R2
        output=$(sed "s/_R1_001.fastq.gz//g" <<< $i)
        output=$(sed "s|./|./SPAdes/|g" <<< $output)
        #echo $output
        ## print IRMA command
        echo "python /usr/local/apps/gb/spades/3.12.0-k_245/bin/spades.py -1 $i -2 $R2 --careful -o $output"  >> ./SPAdes_sub.sh

done