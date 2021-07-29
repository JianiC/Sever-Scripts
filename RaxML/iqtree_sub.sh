#!/bin/bash
#SBATCH --job-name=S_astr
#SBATCH --partition=batch 
#SBATCH --nodes=1 
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=8 
#SBATCH --mem=5G 
#SBATCH --time=150:00:00  

#SBATCH --output=%x_%j.out 
#SBATCH --error=%x_%j.err 

cd $SLURM_SUBMIT_DIR

#/home/jc54391/iqtree-2.1.1-Linux/bin/iqtree2 -s S.fasta -m GTR+G -nt 8 

module load IQ-TREE/1.6.5-omp

iqtree -s S.fasta -m GTR+G -nt 8 