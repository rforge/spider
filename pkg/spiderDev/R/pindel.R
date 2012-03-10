pindel <- function(DNAbin, proportion = TRUE, indelmod = "indel"){
	col <- dim(DNAbin)[2]
	raw <- dist.dna(DNAbin, model = "N", pairwise.deletion = TRUE)
	indel <- dist.dna(DNAbin, model = indelmod)
	if(proportion)(raw+indel)/col else raw+indel
}
	
	
	
	
test <- read.dna("/home/sam/Desktop/testSeqs.fas", format="fasta")

raw <- dist.dna(test, model="raw")