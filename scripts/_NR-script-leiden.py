import os
import tools
import scanpy as sc
import pandas as pd
import dandelion as ddl
from tqdm import tqdm
import matplotlib.pyplot as plt
import scanpy.external as sce

os.chdir('/scratch/user/s4436039/scdata/Python_Integration_Sep')

M_data = sc.read_h5ad("/scratch/user/s4436039/scdata/Python_Integration_Sep/NR_M_clustered.h5ad")

sc.tl.leiden(M_data, resolution=0.5, key_added='leiden_0.5')

M_data.write_h5ad("/scratch/user/s4436039/scdata/Python_Integration_Sep/NR_M_res05.h5ad", compression="gzip")