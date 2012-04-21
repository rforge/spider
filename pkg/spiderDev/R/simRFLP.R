simRFLP <- function(DNAbin, enzyme){
	data(enzymes)
	pattern <- enzymes[match(tolower(enzyme), tolower(enzymes[,1])), 2]
	pattern <- paste(as.character(pattern), collapse = ")|(")
	pattern <- paste("(", pattern, ")", sep = "")
	bigstrings <- lapply(DNAbin, function(xx) paste(as.character(xx), collapse = ""))
	splits <- lapply(bigstrings, function(xx) strsplit(xx, split = pattern))
	frags <- lapply(splits, function(xx) sapply(xx, nchar))
	attr(frags, "class") <- "simRFLP"
	frags
}
