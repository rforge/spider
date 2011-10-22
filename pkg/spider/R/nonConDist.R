nonConDist <-
function(distobj, sppVector = NULL, propZero = FALSE){
	dat <- as.matrix(distobj)
	if(length(sppVector) > 0) dimnames(dat)[[1]] <- sppVector
	nonSpecDists <- list()
	for(i in 1:length(dimnames(dat)[[1]])){
	  nonSpec <- dimnames(dat)[[1]] != dimnames(dat)[[1]][i]
	  nonSpecDists[[i]] <- min(dat[nonSpec,i])
	}	
if(propZero) output <- length(which(unlist(nonSpecDists) == 0))/length(unlist(nonSpecDists)) else output <- unlist(nonSpecDists)

output
}

