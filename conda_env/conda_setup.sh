#!/bin/bash

## gacrc instruction https://wiki.gacrc.uga.edu/images/b/b0/Using_conda_on_the_GACRC_Sapelo2_Cluster.pdf

## interact
## ml spider Miniconda ## find miniconda version on sapelo2
## ml Minicoda2/X.X.X

mkdir ~/myenv ## environment name myenv
conda create -p ~/myev
conda env list  ## list all conda env
source activate ~/myenv
conda list ## list packages within env
conda search #to list all packages available for anaconda
conda search pandas ##to install search for all available versions

conda install numpy==1.16.2
python program.py

conda deactivate (conda env list)
conda remove ~/myenv ## remove conda environment 
################################################################################
############### #Example on gacrc
#################################################################################

cd $SLURM_SUBMIT_DIR

module load Miniconda2/4.7.10
source activate /home/jc54391/Tepi_env
python Tepitope_dis_allele.py -i netMHCpan_out/HLAA0101.xls -o netMHCpan_out/HLAA0101_seqdist.csv
conda deactivate

#Create environment.yml file via conda
conda env export > environment_droplet.yml

#Commit the yml file, git clone the repo onto the target OS, and create a conda environmen
conda env create -f environment.yml