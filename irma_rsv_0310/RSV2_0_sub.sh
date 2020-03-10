
#PBS -S /bin/bash
#PBS -q batch
#PBS -N RSV2_0
#PBS -l nodes=1:ppn=4
#PBS -l walltime=700:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC



/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-02.unmapped.R1.fastq.gz ABC-02.unmapped.R2.fastq.gz ABC-02_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-03.unmapped.R1.fastq.gz ABC-03.unmapped.R2.fastq.gz ABC-03_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-04.unmapped.R1.fastq.gz ABC-04.unmapped.R2.fastq.gz ABC-04_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-05.unmapped.R1.fastq.gz ABC-05.unmapped.R2.fastq.gz ABC-05_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-06.unmapped.R1.fastq.gz ABC-06.unmapped.R2.fastq.gz ABC-06_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-07.unmapped.R1.fastq.gz ABC-07.unmapped.R2.fastq.gz ABC-07_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-08.unmapped.R1.fastq.gz ABC-08.unmapped.R2.fastq.gz ABC-08_RSV2
/home/jc54391/flu-amd/IRMA RSV2-lowQC ABC-09.unmapped.R1.fastq.gz ABC-09.unmapped.R2.fastq.gz ABC-09_RSV2

