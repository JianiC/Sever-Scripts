#PBS -S /bin/bash
#PBS -q batch 
#PBS -N RSVA_G
#PBS -l nodes=1:ppn=8
#PBS -l walltime=700:00:00
#PBS -l mem=16gb



cd $PBS_O_WORKDIR

module load Beast/1.10.4-foss-2018a

beast -threads 8 -beagle -beagle_SSE -overwrite RSVA_WGS_code_metav4_G_n.xml
