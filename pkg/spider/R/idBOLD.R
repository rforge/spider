idBOLD <- function(distobj, sppVector, threshold = 0.01, highThreshold = 0.05){
	distobj <- as.matrix(distobj)
	diag(distobj) <- NA
	output <- rep(NA, length(sppVector))
	for(i in 1:length(sppVector)){
		high <- sppVector[which(distobj[,i] < highThreshold)]
		low <- sppVector[which(distobj[,i] < threshold)]

		if(length(high) == 0) output[i] <- NA else {
		  if(length(unique(low)) == 1) output[i] <- TRUE else output[i] <- FALSE}
	}
	output
}

######################
#Return the name of the result

#~ idBOLD <- function(distobj, sppVector, threshold = 0.01, highThreshold = 0.05){
	#~ distobj <- as.matrix(distobj)
	#~ diag(distobj) <- NA
	#~ output <- rep(NA, length(sppVector))
	#~ for(i in 1:length(sppVector)){
		#~ high <- sppVector[which(distobj[,i] < highThreshold)]
		#~ low <- sppVector[which(distobj[,i] < threshold)]

		#~ if(length(high) == 0) output[i] <- NA else {
		  #~ if(length(unique(low)) == 1) output[i] <- unique(low) else output[i] <- FALSE}
	#~ }
	#~ output
#~ }

######################
#Make sure that the name of the result is the same as the test individual

#~ idBOLD <- function(distobj, sppVector, threshold = 0.01, highThreshold = 0.05){
	#~ distobj <- as.matrix(distobj)
	#~ diag(distobj) <- NA
	#~ output <- rep(NA, length(sppVector))
	#~ for(i in 1:length(sppVector)){
		#~ high <- sppVector[which(distobj[,i] < highThreshold)]
		#~ low <- sppVector[which(distobj[,i] < threshold)]

		#~ if(length(high) == 0) output[i] <- NA else {
		  #~ if(length(unique(low)) == 1 && unique(low) == sppVector[i]) output[i] <- TRUE else output[i] <- FALSE}
	#~ }
	#~ output
#~ }