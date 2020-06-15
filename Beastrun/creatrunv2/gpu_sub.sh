#PBS -S /bin/bash
#PBS -q gpu_q
#PBS -N jobname
#PBS -l nodes=1:ppn=4:gpus=1:default
#PBS -l walltime=280:00:00
#PBS -l mem=16gb



cd $PBS_O_WORKDIR

module load Beast/1.10.4-foss-2018a

beast -beagle_GPU -threads 4 -beagle -beagle_SSE -beagle_instances 4 -overwrite xmlfile