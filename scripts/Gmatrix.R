
## load data for SAP
setwd('/panicle/ssapkot/git_repo/GrainComp_GS/')
load('data/SAP_GrainComp.RData')

##change -1,0,1 to 0,1,2

M <- X + 1

### You should always check a few major things!!
### 1. Quality of SNP and genotypes (i.e. Call Rates!). Default = 90%
### 2. Minor Allele Frequency (MAF) > 1% or 5%

# call rate of animals
1 - (apply(M, 1, function(x) sum(x==5)) / nrow(M))

# call rate of SNPs
1 - (apply(M, 2, function(x) sum(x==5)) / ncol(M))


# allele frequencies
p <- apply(M, 2, mean)/2
round(p, 3)

# create P matrix
P <- matrix(rep(p*2, nrow(M)), ncol=ncol(M), nrow=nrow(M), byrow=TRUE)
rownames(P) <- rownames(M)
colnames(P) <- colnames(M)
print(P)

# create Z matrix
Z <- M - P
print(Z)

# sum 2pq to scale G to the A matrix
q <- 1 - p
sum2pq <- 2*sum(p*q)  # note you can pull out the 2 (redundant)
print(sum2pq)

# calculate G!
G <- (Z %*% t(Z)) / sum2pq
print(round(G, 3))


######### Weighted G matrix using ZDZ'

# Create D
D <- diag(1 / (ncol(M)*(2*p*q)))

# column and rownames
colnames(D) <- colnames(M)
rownames(D) <- colnames(M)

# calculate G with the alternative formula
G <- Z %*% D %*% t(Z)


