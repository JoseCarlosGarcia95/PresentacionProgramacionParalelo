#!/usr/bin/Rscript
library(parallel)

# Calculate the number of cores
no_cores <- detectCores() - 1

# Initiate cluster
cl <- makeCluster(no_cores)

x = parLapply(cl, 1:10000000/3, round, digits=3)
