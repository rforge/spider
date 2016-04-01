sisterMatrix <- function(phylo){
	binarisePenult <- function(vector){
		xx <- vector
		vector[which(xx != max(xx) - 1)] <- 0
		vector[which(xx == max(xx) - 1)] <- 1
		vector
	}
	
	vcvp <- vcv(phylo)
	vcvpInt <- apply(vcvp, 2, function(xx) as.numeric(as.factor(xx)))
	vcvpBin <- apply(vcvpInt, 2, binarisePenult)
	vcvpBin
}