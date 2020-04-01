# GrainComp_SAP
Genomic Prediction of grain composition in sorghum association panel

## data

1. R data file type:
    - GrainComp.RData: Contains marker genotype file **X**(-1, 0, 1 format), phenotypic BLUPs **Y** (adjusted using lmm for random effects of environmental variables)
    - BMTME.RData: Contains **geno** (GRM using VanRaden), **phenoBME** and **phenoBMTME** files with phenotypic blups for each environment/year (adjusted for random effect of replication within environment)
    - BMTME_pGrain.RData: BMTME R data with phenotypes adjusted for per grain values instead of percent dry basis. (see description below in Tabular data files)
2. GrainComp_herit-pheno.csv: Contains data with covariates for marker based heritability calculation.
    
## scripts
    - Contains notebooks and various script files to run BGLR and BMTME packages in R as well as for making figures in python.
