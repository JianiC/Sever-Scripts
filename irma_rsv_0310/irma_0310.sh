#!/bin/bash

echo "\n" >> RSV1_4_sub.sh
for((i=0;i<10;i++))
do
	echo "/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-4$i.unmapped.R1.fastq.gz ABC-4$i.unmapped.R2.fastq.gz ABC-4$i_RSV1" >> RSV1_4_sub.sh
	
done