#!/bin/bash

var=$(find . -name '*.fasta')
echo "$var"

for i in $var
do
	#echo "$i"
	
	n=$(awk -F. '{print $2}' <<< $i)
	n="${n:1}" ##remove first ch "\"
	
	echo "$n will start"
	
	mkdir $n
	mv $i $n
	cp ./sub.sh $n
	sed -i.bak '4s/'jobname'/'"$n"'/g' $n/sub.sh	
	sed -i.bak '24s/'fastafile'/'"$n.fasta"'/g' $n/sub.sh
	sed -i.bak '24s/'treenamne'/'"$n.tree"'/g' $n/sub.sh	
	rm ./$n/sub.sh.bak 
	
done	
	 