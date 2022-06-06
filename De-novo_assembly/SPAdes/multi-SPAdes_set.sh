#!/bin/bash

##change directory
cwd=$(pwd)


## find file end with L001_R1_001.fastq_gz

R1=$(find . -type f -name '*_L001_R1_001.fastq.gz')
#echo $R1

## get R2 and output file name
## L001_R1 is $i
for i in $R1
do
        
        L1R2=$(sed "s/R1/R2/g" <<< $i)
        L2R1=$(sed "s/L001/L002/g" <<< $i)
        L2R2=$(sed "s/R1/R2/g" <<< $L2R1)
        L3R1=$(sed "s/L001/L003/g" <<< $i)
        L3R2=$(sed "s/R1/R2/g" <<< $L3R1)
        L4R1=$(sed "s/L001/L004/g" <<< $i)
        L4R2=$(sed "s/R1/R2/g" <<< $L4R1)
        #echo $R2
        output=$(sed "s/_L001_R1_001.fastq.gz//g" <<< $i)
        output=$(sed "s|./|./multi-SPAdes/|g" <<< $output)
        #echo $output
        ## print IRMA command
        echo "python /usr/local/apps/gb/spades/3.12.0-k_245/bin/spades.py --pe1-1 $i --pe1-2 $L1R2 --pe2-1 $L2R1 --pe2-2 $L2R2 --pe3-1 $L3R1 --pe3-2 $L3R2 --pe4-1 $L4R1 --pe4-2 $L4R2 -o $output"  >> ./multi-SPAdes_sub.sh

