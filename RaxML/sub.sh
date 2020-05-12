#PBS -S /bin/bash
#PBS -j oe
#PBS -q bahl_salv_q
#PBS -N RSVB_F_0103
#PBS -l nodes=1:ppn=8:AMD
#PBS -l walltime=200:00:00
#PBS -l vmem=8gb

#PBS -M jc54391@uga.edu
#PBS -m abe

cd $PBS_O_WORKDIR

ml RAxML/8.2.11-foss-2016b-sse


echo
echo "Job ID: $PBS_JOBID"
echo "Queue:  $PBS_QUEUE"
echo "Cores:  $PBS_NP"
echo "Nodes:  $(cat $PBS_NODEFILE | sort -u | tr '\n' ' ')"
echo

raxmlHPC-SSE3 -s RSVB_F_0103.fasta -n RSVB_F_0103.tree -m GTRGAMMA -f a -x 123 -N autoMRE -p 456 > primates_job${PBS_JOBID}.log

