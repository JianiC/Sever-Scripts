# IRMA on Sapelo2

## Running program
https://wiki.gacrc.uga.edu/wiki/IRMA-Sapelo2

`module load IRMA/0.9.3-foss-2016b-Perl-5.24.1`

## Running IRMA with customized modules
### Install IRMA under home directory

```
cd ~
wget https://wonder.cdc.gov/amd/flu/irma/flu-amd-201909.zip
unzip flu-IRMA
```


### Running program
```
#PBS -S /bin/bash
#PBS -q batch
#PBS -N irma-test
#PBS -l nodes=1:ppn=4
#PBS -l walltime=48:00:00
#PBS -l mem=20gb

cd $PBS_O_WORKDIR

module load R/3.6.1-foss-2018a-X11-20180131-GACRC

/home/jc54391/flu-amd/IRMA [options]

```
