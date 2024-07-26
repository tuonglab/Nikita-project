#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=75
#SBATCH --mem=750G
#SBATCH --job-name=MyeloidMerge
#SBATCH --time=150:00:00
#SBATCH --partition=general
#SBATCH --account=a_kelvin_tuong
#SBATCH -o MyeloidMerge.output
#SBATCH -e MyeloidMerge.error

# export JAVA_CMD=/home/uqztuong/miniforge3/bin/java
# module load R
Rscript Myeloid_merge_script_1.R