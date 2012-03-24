compVectorDist <- function(DNAbin, kval = 6, subBackground = FALSE){

	Kstring <- function(DNAseq, K = 6, mode = "character"){
		if(mode == "character") DNAseq <- as.character(DNAseq)
		start <- 1: (length(DNAseq) - K + 1)
		end <- K : length(DNAseq)
		
		Kseq <- mapply(function(x, y) DNAseq[x:y], start, end)
		if(mode == "character") Kseq <- apply(Kseq, MARGIN = 2, function(xx) paste(xx, collapse = ""))
		Kseq
	}
	
	compVectorSeq <- function(DNAseq, Kref, Kval = 6, subBackground = TRUE){
		Kseq <- Kstring(DNAseq, K = Kval)
		Kseq1 <- Kstring(DNAseq, K = Kval - 1)
		Kseq2 <- Kstring(DNAseq, K = Kval - 2)
		
		out <- sapply(Kref, function(xx) length(which(Kseq %in% xx)))/length(Kseq)
		
		
		if(subBackground){
			pO1a <- sapply(substr(Kref, 1, Kval - 1), function(xx) length(which(Kseq1 %in% xx)))/length(Kseq1)
			pO1b <- sapply(substr(Kref, 2, Kval), function(xx) length(which(Kseq1 %in% xx)))/length(Kseq1)
			pO2 <- sapply(substr(Kref, 2, Kval - 1), function(xx) length(which(Kseq2 %in% xx)))/length(Kseq2)
			
			MarkovMod <- (pO1a * pO1b)/pO2
			out <- (out - MarkovMod)/MarkovMod
			out[is.na(out)] <- 0
		}
		out
	}
	
	Kreference <- permDNA(kval)
	
	if(is.list(DNAbin)) dimNames <- names(DNAbin)
	if(is.matrix(DNAbin)) dimNames <- dimnames(DNAbin)[[1]]
	
	alignVecs <- lapply(DNAbin, function(xx) compVectorSeq(xx, Kref = Kreference, Kval = kval, subBackgroun = subBackground))
	distMat <- matrix(NA, ncol = length(alignVecs), nrow = length(alignVecs), dimnames = list(dimNames, dimNames))
	for(i in 1:length(alignVecs)){
		for(j in 1:length(alignVecs)){
			corIJ <- sum(alignVecs[[i]] * alignVecs[[j]])/sqrt(sum(alignVecs[[i]]^2)*sum(alignVecs[[j]]^2))
			distMat[i,j] <- (1-corIJ)/2
		}
	}
	distMat
}



