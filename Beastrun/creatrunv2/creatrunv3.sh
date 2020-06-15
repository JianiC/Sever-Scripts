#!/bin/bash

var=$(find . -name '*.xml')
echo "$var"

for i in $var
do
	#echo "$i"
	
	n=$(awk -F. '{print $2}' <<< $i)
	n="${n:1}" ##remove first ch "\"
	
	echo "$n will start"
	
	mkdir $n
	mkdir $n/run1
	mv $i $n/run1
	cp ./sub.sh $n/run1
	sed -i.bak '3s/'jobname'/'"$n.run1"'/g' $n/run1/sub.sh	
	
	sed -i.bak '14s/'xmlfile'/'"$n.xml"'/g' $n/run1/sub.sh

	rm ./$n/run1/sub.sh.bak 
	
done	
	 