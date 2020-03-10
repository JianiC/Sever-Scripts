
#PBS -S /bin/bash
#PBS -q batch
#PBS -N RSV1_4
#PBS -l nodes=1:ppn=4
#PBS -l walltime=700:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC




/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-40.unmapped.R1.fastq.gz ABC-40.unmapped.R2.fastq.gz ABC-40_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-41.unmapped.R1.fastq.gz ABC-41.unmapped.R2.fastq.gz ABC-41_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-42.unmapped.R1.fastq.gz ABC-42.unmapped.R2.fastq.gz ABC-42_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-43.unmapped.R1.fastq.gz ABC-43.unmapped.R2.fastq.gz ABC-43_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-44.unmapped.R1.fastq.gz ABC-44.unmapped.R2.fastq.gz ABC-44_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-45.unmapped.R1.fastq.gz ABC-45.unmapped.R2.fastq.gz ABC-45_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-46.unmapped.R1.fastq.gz ABC-46.unmapped.R2.fastq.gz ABC-46_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-47.unmapped.R1.fastq.gz ABC-47.unmapped.R2.fastq.gz ABC-47_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-48.unmapped.R1.fastq.gz ABC-48.unmapped.R2.fastq.gz ABC-48_RSV1



