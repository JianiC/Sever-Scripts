
#PBS -S /bin/bash
#PBS -q batch
#PBS -N RSV1_3
#PBS -l nodes=1:ppn=4
#PBS -l walltime=700:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC




/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-30.unmapped.R1.fastq.gz ABC-30.unmapped.R2.fastq.gz ABC-30_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-31.unmapped.R1.fastq.gz ABC-31.unmapped.R2.fastq.gz ABC-31_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-32.unmapped.R1.fastq.gz ABC-32.unmapped.R2.fastq.gz ABC-32_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-33.unmapped.R1.fastq.gz ABC-33.unmapped.R2.fastq.gz ABC-33_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-34.unmapped.R1.fastq.gz ABC-34.unmapped.R2.fastq.gz ABC-34_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-35.unmapped.R1.fastq.gz ABC-35.unmapped.R2.fastq.gz ABC-35_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-36.unmapped.R1.fastq.gz ABC-36.unmapped.R2.fastq.gz ABC-36_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-37.unmapped.R1.fastq.gz ABC-37.unmapped.R2.fastq.gz ABC-37_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-38.unmapped.R1.fastq.gz ABC-38.unmapped.R2.fastq.gz ABC-38_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-39.unmapped.R1.fastq.gz ABC-39.unmapped.R2.fastq.gz ABC-39_RSV1
