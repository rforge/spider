rmSingletons <- function(sppVector, exclude = TRUE){
	singletons <- names(which(table(sppVector) == 1))
	if(eradicate) which(!sppVector %in% singletons) else which(sppVector %in% singletons)
}