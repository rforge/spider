best2nullLRT <- function (gmyc) {
    chi.sq <- abs(2 * (max(gmyc$likelihood) - gmyc$likelihood[1]))
    dfs <- (dim(gmyc$parameters)[2] + length(gmyc$threshold.time[[which.max(gmyc$likelihood)]])) - 1
    prob <- 1 - pchisq(chi.sq, dfs)
    list(chi.sq = chi.sq, df = dfs, probability = prob)
}
