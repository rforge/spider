meiersBestMatch <- function(distobj, spp, threshold = 0.01){
	distobj <- as.matrix(distobj)
	diag(distobj) <- NA
	len <- length(spp)
	output <- rep(NA, len)
	aa <- apply(dist, MARGIN=2, FUN=function(x) which(x < threshold))
	bb <- lapply(aa, function(x) unique(spp[x]))
	cc <- sapply(bb, length)
	dd <- which(cc == 1)
	ee <- spp == bb
	output[which(ee)] <- "correct"
	output[which(!ee)] <- "incorrect"
	output[which(cc == 0)] <- "no id"
	output[which(cc > 1)] <- "ambiguous"
	output
}
