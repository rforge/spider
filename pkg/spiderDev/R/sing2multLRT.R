sing2multLRT <- function (test1, test2) {
    chi.sq <- abs(2 * (max(test1$likelihood) - max(test2$likelihood)))
    dfs <- 3 * (length(test2$threshold.time[[which.max(test2$likelihood)]]) - 1)
    prob <- 1 - pchisq(chi.sq, dfs)
    list(chi.sq = chi.sq, df = dfs, probability = prob)
}
