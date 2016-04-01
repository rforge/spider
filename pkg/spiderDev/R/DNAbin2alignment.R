DNAbin2alignment <- function(DNAbin){
	write.dna(DNAbin, file = "tempDNAbin.fasta", format = "fasta", colsep = "")
	align <- read.alignment(file = "tempDNAbin.fasta", format = "fasta")
	unlink("tempDNAbin.fasta")
	align
}
