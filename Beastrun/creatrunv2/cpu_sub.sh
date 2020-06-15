#PBS -S /bin/bash
#PBS -q batch 
#PBS -N jobname
#PBS -l nodes=1:ppn=8
#PBS -l walltime=260:00:00
#PBS -l mem=16gb



cd $PBS_O_WORKDIR

module load Beast/1.10.4-foss-2018a

beast -threads 8 -beagle -beagle_SSE -overwrite xmlfile