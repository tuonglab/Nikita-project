import os
import numpy as np
from scipy.io import mmread
import scipy.sparse as sp
import matplotlib.pyplot as plt
from IPython.display import Image
import scanpy as sc
from cnmf import cNMF, Preprocess
import seaborn as sns

os.chdir('/scratch/user/s4436039/scdata/cNMF')
np.random.seed(14)

# Read in the corrected data:
adata_c = sc.read_h5ad('/scratch/user/s4436039/scdata/cNMF/cNMF.Corrected.HVG.Varnorm.h5ad') #contains only hvg genes
adata_tp10k = sc.read_h5ad('/scratch/user/s4436039/scdata/cNMF/cNMF.TP10K.h5ad') # contains all genes
with open('/scratch/user/s4436039/scdata/cNMF/cNMF.Corrected.HVGs.txt', 'r') as f:
    hvgs = [line.strip() for line in f] #list of highly variable genes

## Results will be saved to [output_directory]/[run_name] 
output_directory = '/scratch/user/s4436039/scdata/cNMF'

## Initialize the cnmf object that will be used to run analyses
cnmf_obj_corrected = cNMF(output_dir=output_directory, name='BatchCorrected')

## Prepare the data, I.e. subset to 2000 high-variance genes, and variance normalize
cnmf_obj_corrected.prepare(counts_fn='/scratch/user/s4436039/scdata/cNMF/cNMF.Corrected.HVG.Varnorm.h5ad',
                           tpm_fn='/scratch/user/s4436039/scdata/cNMF/cNMF.TP10K.h5ad',
                           genes_file='/scratch/user/s4436039/scdata/cNMF/cNMF.Corrected.HVGs.txt',
                           components=[15], n_iter=20, seed=14, num_highvar_genes=2000)

## factorization
cnmf_obj_corrected.factorize(worker_i=0, total_workers=1)

