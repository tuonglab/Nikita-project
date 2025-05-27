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

adata = sc.read_h5ad('/scratch/user/s4436039/scdata/Myeloid_Objects/NRclean_Raw_Data.h5ad') #raw cleaned data

p = Preprocess(random_seed=14)
(adata_c, adata_tp10k, hvgs) = p.preprocess_for_cnmf(adata, harmony_vars='integration_id', n_top_rna_genes = 2000,
                                                     max_scaled_thresh = None, quantile_thresh = .9999, makeplots=True,
                                                    save_output_base='/scratch/user/s4436039/scdata/cNMF')