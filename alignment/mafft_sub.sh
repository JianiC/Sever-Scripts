#PBS -S /bin/bash
#PBS -q batch
#PBS -N Cov_mafft
#PBS -l nodes=1:ppn=1
#PBS -l walltime=20:00:00
#PBS -l mem=2gb

cd $PBS_O_WORKDIR

module load MAFFT/7.407-foss-2018a-with-extensions

mafft Cov19_hcrf_0327.fasta > Cov19_hcrf_0327_al.fasta 
