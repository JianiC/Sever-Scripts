#!/bin/bash


max=3;

for((dir =2; dir<=$max; dir++))
do 
	mkdir run"$dir"
    ##echo "making directories rum$dir"
    
	cp -r run1/* run"$dir";
	##echo "copy files from run1 to run$dir"
	
	sed -i.bak '3s/'1'/'"$dir"'/g' run$dir/sub.sh
	rm run$dir/sub.sh.bak 
	
done

