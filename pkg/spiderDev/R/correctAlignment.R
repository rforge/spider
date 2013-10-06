correctAlignment <- function(DNAbin, DNAccf){
	dimSeq <- dim(DNAbin)
	namesSeq <- dimnames(DNAbin)[[1]]
	DNAbin <- as.list(DNAbin)
	start <- DNAccf$lag * -1
	lengthMod <- lapply(1:dimSeq[1], function(xx) as.list(DNAbin[[xx]][start[xx]: dimSeq[2]]))
	outDNAbin <- do.call(c, lengthMod)
	outDNAbin <- blockAlignment(outDNAbin, mode = "longest")
	names(outDNAbin) <- namesSeq
	outDNAbin
}