# GrainComp_SAP
Genomic Prediction of grain composition in sorghum association panel

## data

1. R data file type:
    - GrainComp.RData: Contains marker genotype file **X**(-1, 0, 1 format), phenotypic BLUPs **Y** (adjusted using lmm for random effects of environmental variables)
    - BMTME.RData: Contains **geno** (GRM using VanRaden), **phenoBME** and **phenoBMTME** files with phenotypic blups for each environment/year (adjusted for random effect of replication within environment)
    - BMTME_pGrain.RData: BMTME R data with phenotypes adjusted for per grain values instead of percent dry basis. (see description below in Tabular data files)
2. Tabular data files:
    - SAP_multiyear_agronomic_composition.csv: Consists of complete year and rep data for the phenotypes.
    - GrainComp_herit-pheno.csv: Contains data with covariates for marker based heritability calculation.
    - SAP_GrainComp_PerGrain_Complete.csv: Main Grain Composition phenotypes converted from %dry basis to per grain values using thousand grain weight measures using this formula (pheno (in grams or Cal) = pheno(in %dry) * TGW/1000)
    
## scripts
    - Contains notebooks and various script files to run BGLR and BMTME packages in R as well as for making figures in python.

## results
     - figures: This folder contains figures generated using R and python for the data analysis done.
