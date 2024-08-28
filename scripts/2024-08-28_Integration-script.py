
import os
import tools
import scanpy as sc
import scanpy.external as sce
import pandas as pd
import dandelion as ddl
from tqdm import tqdm

os.chdir('/scratch/user/s4436039/scdata/Python_Integration')

data_pre = sc.read_h5ad('/scratch/user/s4436039/scdata/Python_Integration/data_i_pre-int.h5ad')

sce.pp.harmony_integrate(data_pre, 'integration_id')

data_pre.write_h5ad("/scratch/user/s4436039/scdata/Python_Integration/data_i_int.h5ad", compression="gzip")