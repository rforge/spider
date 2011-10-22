threshOpt <- function(distobj, sppVector, threshold = 0.01){
	dat <- as.matrix(distobj)
	#individual (diag) values excluded
	diag(dat) <- NA
	#list unique species
	unSpp <- unique(sppVector)
	#get distributions of number of individuals for each species
	sppnum <- sapply(unSpp, function(x) length(which(sppVector %in% x)))
	#names of singleton species 
	MU <- (unSpp[sppnum == 1])
	#names of non-singleton species (>1)
	TT <- (unSpp[sppnum > 1])
	#gets vector of column rows of all non-singletons
	ZZ <- which(sppVector %in% TT)
	#run the sensitivity loop - singleton species (MU) excluded from iteration - only uses ZZ for query
	#False positive -  no matches within x% of query --- as the "NA" value
	#Positive - only 1 sp. within x% of query --- as the "TRUE" value;
	#False negative - more than 1 spp. within x% of query --- as the "FALSE" value
	#remember for 0, we need to say ==0 rather than <0
	OUT <- NULL
	for(i in 1:length(ZZ)) {
		THREE <- sppVector[which(dat[,ZZ[i]] < threshold)]
			if(length(THREE) == 0) OUT[i] <- NA else {
				if(length(unique(THREE)) == 1) OUT[i] <- TRUE else OUT[i] <- FALSE}
	}
	tab <- matrix(data=NA, nrow=1, ncol=4, dimnames=NULL)
	colnames(tab) <- c("Thresh", "Pos", "False neg", "False pos")
	tab[,1] <- threshold
	tab[,2] <- length(which(OUT == "TRUE"))#TRUE(pos)
	tab[,3] <- length(which(OUT == "FALSE"))#FALSE(false neg)
	tab[,4] <- length(which(is.na(OUT)))#NA(false pos)
	tab
}