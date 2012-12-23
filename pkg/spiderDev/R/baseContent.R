baseContent <- function(DNAbin){
	probs <- vector()
	for (i in 1:dim(DNAbin)[1]) {
		exBf <- base.freq(DNAbin[-i, ])
		seqBf <- base.freq(DNAbin[i,], freq = TRUE)
		probs[i] <- dmultinom(seqBf, prob = exBf, log = TRUE)
	}
	probs
}