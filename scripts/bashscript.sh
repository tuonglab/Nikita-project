#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=750G
#SBATCH --job-name=MyeloidMerge
#SBATCH --time=120:00:00
#SBATCH --partition=general
#SBATCH --account=a_kelvin_tuong
#SBATCH -o MyeloidMerge2.output
#SBATCH -e MyeloidMerge2.error

# export JAVA_CMD=/home/uqztuong/miniforge3/bin/java
# module load R
source ~/.bashrc
mamba activate env
Rscript Myeloid_merge_script_2.r