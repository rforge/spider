inCon <- function(DNAbin){
	distDNA <- as.matrix(dist.dna(DNAbin, model = "raw"))	
	output <- ifelse(distDNA == 0, 0, 1)
	output
}
