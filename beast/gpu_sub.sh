#PBS -S /bin/bash
#PBS -q gpu_q
#PBS -N RSVA_test
#PBS -l nodes=1:ppn=4:gpus=2:default
#PBS -l walltime=1200:00:00
#PBS -l mem=8gb


cd $PBS_O_WORKDIR

module load Beast/1.10.3-foss-2018a

beast -beagle_GPU -beagle_order 1,2,1,2,1,2,1,2,1,2,1, -threads 4 -beagle -beagle_SSE -beagle_instances 4 -overwrite RSVA_WGS.xml
