inCon <- function(DNAbin){
	distDNA <- as.matrix(dist.dna(DNAbin, model = "raw"))	
	apply(distDNA, 1, function(x) which(x == 0, useNames = FALSE))
}