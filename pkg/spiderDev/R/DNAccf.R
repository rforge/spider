DNAccf <- function(DNAbin, refSeq = 1, lag.max = NULL){
	numMat <- apply(DNAbin, 1, as.numeric)
	
	if(refSeq == "random") ref <- sample(1:dim(DNAbin)[[1]], 1) else ref <- refSeq
	
	outMaxCor <- vector()
	outLag <- vector()
	for (i in 1:dim(DNAbin)[[1]]){
		ccfRes <- ccf(numMat[ , ref], numMat[ , i], lag.max = lag.max, plot = FALSE)
		outMaxCor[i] <- max(ccfRes$acf)
		outLag[i] <- ccfRes$lag[which.max(ccfRes$acf)]
	}
	list(cor = outMaxCor, lag = outLag)
}
