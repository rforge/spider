exCon <- function(DNAbin){
	jackMeans <- list()
	for (i in 1:dim(DNAbin)[1]) {
		wholeDist <- dist.dna(DNAbin[-i, ], model = "raw")
		jackMeans[[i]] <- c(mean(wholeDist), sd(wholeDist))
	}
	
	distMeans <- sapply(jackMeans, function(x) x[1])
	highCI <- mean(distMeans) + (1.96 * sd(distMeans))
	lowCI <- mean(distMeans) - (1.96 * sd(distMeans))
	
	above <- which(distMeans > highCI)
	below <- which(distMeans < lowCI)
	
	list(above, below)

}
