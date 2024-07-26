#script to merge myeloid cells from all datasets

#set wd
getwd()
setwd('/scratch/user/s4436039/scdata')
getwd()

library(Seurat)

# import all datasets
data_1 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE112271_myeloid_int.RDS")
data_2 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE131907_myeloid_int.RDS")
data_3 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE139324_myeloid_int.RDS")
data_4 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE154778_myeloid_int.RDS")
data_5 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE156405_myeloid_int.RDS")
data_6 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE161529_myeloid_int.RDS")
data_7 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE162025_myeloid_int.RDS")
data_8 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE162498_myeloid_int.RDS")
data_9 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE164690_myeloid_int.RDS")
data_10 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE167297_myeloid_int.RDS")
data_11 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE173468_myeloid_int.RDS")
data_12 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE176078_myeloid_int.RDS")
data_13 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE180661_myeloid_int.RDS")
data_14 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE183916_myeloid_int.RDS")
data_15 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE184880_myeloid_int.RDS")
data_16 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE188737_myeloid_int.RDS")
data_17 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE189903_myeloid_int.RDS")
data_18 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE195861_myeloid_int.RDS")
data_19 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE197177_myeloid_int.RDS")
data_20 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE199515_myeloid_int.RDS")
data_21 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE200218_myeloid_int.RDS")
data_22 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE213243_myeloid_int.RDS")
data_23 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE214295_myeloid_int.RDS")
data_24 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE215120_myeloid_int.RDS")
data_25 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE217517_myeloid_int.RDS")
data_26 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE223063_myeloid_int.RDS")
data_27 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE224090_myeloid_int.RDS")
data_28 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE225600_myeloid_int.RDS")
data_29 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE231535_myeloid_int.RDS")
data_30 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE234129_myeloid_int.RDS")
data_31 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE234933_myeloid_int.RDS")
data_32 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/GSE235676_myeloid_int.RDS")
data_33 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/PMID32561858_myeloid_int.RDS")
data_34 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/PRJCA005422_myeloid_int.RDS")
data_35 <- readRDS(file = "/scratch/user/s4436039/scdata/Myeloid_Cells/Myeloid_Cells_Integrate/PRJNA907381_myeloid_int.RDS")

#merge all datasets
Data <- merge(data_1, y = c(data_2, data_3, data_4, data_5, data_6, data_7, data_8, data_9, data_10, data_11, data_12, data_13, data_14, data_15, data_16, data_17, data_18, data_19, data_20, data_21, data_22, data_23, data_24, data_25, data_26, data_27, data_28, data_29, data_30, data_31, data_32, data_33, data_34, data_35), project = "integration")

#Export integrated RDS 
saveRDS(Data, "/scratch/user/s4436039/scdata/All_Myeloid.RDS")