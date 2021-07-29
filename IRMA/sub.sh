#!/bin/bash

#SBATCH --job-name=jobname
#SBATCH --partition=bahl_p
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=5gb
#SBATCH --cpus-per-task=4
#SBATCH --time=150:00:00
#SBATCH --output=%x_%j.out
#SBATCH --error=%x_%j.err

module load R/3.6.2-foss-2019b


cd $SLURM_SUBMIT_DIR
