
#PBS -S /bin/bash
#PBS -q batch
#PBS -N RSV1_2
#PBS -l nodes=1:ppn=4
#PBS -l walltime=700:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC




/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-20.unmapped.R1.fastq.gz ABC-20.unmapped.R2.fastq.gz ABC-20_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-21.unmapped.R1.fastq.gz ABC-21.unmapped.R2.fastq.gz ABC-21_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-22.unmapped.R1.fastq.gz ABC-22.unmapped.R2.fastq.gz ABC-22_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-23.unmapped.R1.fastq.gz ABC-23.unmapped.R2.fastq.gz ABC-23_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-24.unmapped.R1.fastq.gz ABC-24.unmapped.R2.fastq.gz ABC-24_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-25.unmapped.R1.fastq.gz ABC-25.unmapped.R2.fastq.gz ABC-25_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-26.unmapped.R1.fastq.gz ABC-26.unmapped.R2.fastq.gz ABC-26_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-27.unmapped.R1.fastq.gz ABC-27.unmapped.R2.fastq.gz ABC-27_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-28.unmapped.R1.fastq.gz ABC-28.unmapped.R2.fastq.gz ABC-28_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-29.unmapped.R1.fastq.gz ABC-29.unmapped.R2.fastq.gz ABC-29_RSV1
