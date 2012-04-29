clustGMYC <- function(gmyc, index = "maxLikelihood"){
	DoubLett <- paste(rep(LETTERS, rep(26,26)), LETTERS, sep="")
	Ntip <- length(gmyc$tree$tip.label)
	#What nodes define the points at which intra-specific branching occurs?
	if(index == "maxLikelihood") index <- which.max(gmyc$likelihood)
	clustNodes <- gmyc$MRCA[[index]] + Ntip
	#What tips are descended from these nodes?
	tipNums <- lapply(clustNodes, function(x) nodeDesc(gmyc$tree, x))
	#Name the clusters with double letters
	if(length(tipNums) > 0){
		names(tipNums) <- DoubLett[1:length(tipNums)] 
		#Turn into a vector
		gmycSpp <- substr(names(unlist(tipNums)), 1, 2)
		#Create the species vector
		allSpp <- gmycSpp[match(1:Ntip, unlist(tipNums))]
		#Name singletons
		allSpp[is.na(allSpp)] <- DoubLett[sum(length(tipNums), 1) : sum(length(tipNums), length(allSpp[is.na(allSpp)]))]
	} else allSpp <- rep(DoubLett[1], Ntip)
	allSpp
}
