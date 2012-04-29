clustCI.gmyc <- function(gmyc){
	aa <- which(gmyc$likelihood >= max(gmyc$likelihood) - 2)
	#bb <- sapply(aa, function(x) length(unique(clustGMYC(gmyc, x))))
	range(aa)
}
