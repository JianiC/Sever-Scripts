#!/bin/bash


max=5;


for d in */
do
	if [ -d ${d} ]; then
        # Will not run if no directories are available
  		echo "Find $d "
  		
 		cd $d
 		for((dir =2; dir<=$max; dir++))
		do 
			mkdir run"$dir"
    		##echo "making directories rum$dir"
    
			cp -r run1/* run"$dir";
			##echo "copy files from run1 to run$dir"
	
			sed -i.bak '3s/'run1'/'run"$dir"'/g' run$dir/sub.sh
			rm run$dir/sub.sh.bak 		
	    done
	    cd ..
	fi
done 