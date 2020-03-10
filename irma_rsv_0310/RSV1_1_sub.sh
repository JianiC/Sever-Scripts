
#PBS -S /bin/bash
#PBS -q batch
#PBS -N RSV1_1
#PBS -l nodes=1:ppn=4
#PBS -l walltime=700:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC



/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-10.unmapped.R1.fastq.gz ABC-10.unmapped.R2.fastq.gz ABC-10_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-11.unmapped.R1.fastq.gz ABC-11.unmapped.R2.fastq.gz ABC-11_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-12.unmapped.R1.fastq.gz ABC-12.unmapped.R2.fastq.gz ABC-12_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-13.unmapped.R1.fastq.gz ABC-13.unmapped.R2.fastq.gz ABC-13_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-14.unmapped.R1.fastq.gz ABC-14.unmapped.R2.fastq.gz ABC-14_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-15.unmapped.R1.fastq.gz ABC-15.unmapped.R2.fastq.gz ABC-15_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-16.unmapped.R1.fastq.gz ABC-16.unmapped.R2.fastq.gz ABC-16_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-17.unmapped.R1.fastq.gz ABC-17.unmapped.R2.fastq.gz ABC-17_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-18.unmapped.R1.fastq.gz ABC-18.unmapped.R2.fastq.gz ABC-18_RSV1
/home/jc54391/flu-amd/IRMA RSV1-lowQC ABC-19.unmapped.R1.fastq.gz ABC-19.unmapped.R2.fastq.gz ABC-19_RSV1
