#PBS -S /bin/bash
#PBS -q batch
#PBS -N muscle_COV
#PBS -l nodes=1:ppn=1:AMD
#PBS -l walltime=100:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load MUSCLE/3.8.1551-foss-2016b

muscle -in Cov19_hcrf_0327.fasta -out Cov19_hcrf_0327_al.fasta -maxiters 2 

