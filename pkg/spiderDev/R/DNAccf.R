DNAccf <- function(DNAbin, randomRefSeq = FALSE, lag.max = NULL){
	numMat <- apply(DNAbin, 1, as.numeric)
	
	if(!randomRefSeq) ref <- 1 else ref <- sample(1:dim(DNAbin)[[1]], 1)
	
	outMaxCor <- vector()
	outLag <- vector()
	for (i in 1:dim(DNAbin)[[1]]){
		ccfRes <- ccf(numMat[ , ref], numMat[ , i], lag.max = lag.max, plot = FALSE)
		outMaxCor[i] <- max(ccfRes$acf)
		outLag[i] <- ccfRes$lag[which.max(ccfRes$acf)]
	}
	list(cor = outMaxCor, lag = outLag)
}
