#PBS -S /bin/bash
#PBS -j oe
#PBS -q batch
#PBS -N jobname
#PBS -l nodes=1:ppn=10:AMD
#PBS -l walltime=200:00:00
#PBS -l vmem=8gb



cd $PBS_O_WORKDIR

ml RAxML/8.2.11-foss-2016b-sse


echo
echo "Job ID: $PBS_JOBID"
echo "Queue:  $PBS_QUEUE"
echo "Cores:  $PBS_NP"
echo "Nodes:  $(cat $PBS_NODEFILE | sort -u | tr '\n' ' ')"
echo

raxmlHPC-SSE3 -s fastafile -n treename -m GTRGAMMA -f a -x 123 -N autoMRE -p 456 -T 10 > primates_job${PBS_JOBID}.log

