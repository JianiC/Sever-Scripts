#!/bin/bash
##first loop through to find different sub-directories, then loop to find different runs to submit

cwd=$(pwd)

for d in $cwd 
do
	if [ -d ${d} ]; then
        # Will not run if no directories are available
  		echo "Find run in $d "
 		cd $d
  
 		for sub in $(find . -name 'sub.sh')
		do
			dir=$(dirname $sub)
			cd $dir
			echo "I am in $dir to submit $sub ..."
			##qsub ./sub.sh
		cd $cwd
	done
	fi
done


