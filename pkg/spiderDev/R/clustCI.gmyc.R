clustCI.gmyc <- function(gmyc, indices = FALSE){
	aa <- which(gmyc$likelihood >= max(gmyc$likelihood) - 2)
	bb <- sapply(aa, function(x) length(unique(clustGMYC(gmyc, x))))
	if(indices) aa[which(bb == range(bb))] else range(bb)
}
