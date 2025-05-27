#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=200G
#SBATCH --job-name=NR-GRN-pyscenic
#SBATCH --time=6:00:00
#SBATCH --partition=general
#SBATCH --account=a_kelvin_tuong
#SBATCH -o NR-GRN-pyscenic.output
#SBATCH -e NR-GRN-pyscenic.error

# export JAVA_CMD=/home/uqztuong/miniforge3/bin/java
source ~/.bashrc
mamba activate pyscenic2
cd /scratch/user/s4436039/scdata/PySCENIC_Jan/Raw
arboreto_with_multiprocessing.py DC_raw_loom.loom allTFs_hg38.txt --output adj_raw.tsv --num_workers 64