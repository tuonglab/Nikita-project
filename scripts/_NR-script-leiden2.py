import os
import tools
import scanpy as sc
import pandas as pd
import dandelion as ddl
from tqdm import tqdm
import matplotlib.pyplot as plt
import scanpy.external as sce

os.chdir('/scratch/user/s4436039/scdata/Python_Integration_Sep')

data = sc.read_h5ad("/scratch/user/s4436039/scdata/Python_Integration_Sep/NRclean_clustered.h5ad")

sc.tl.leiden(data, resolution=0.8, key_added='clean-leiden_0.8')

data.write_h5ad("/scratch/user/s4436039/scdata/Python_Integration_Sep/NRclean_clustered.h5ad", compression="gzip")