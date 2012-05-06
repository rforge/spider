nucDiagExptl <- function(DNAbin, sppVector, block = 1, category = "pure"){
	
	block <- block - 1
	DNAbin <- as.matrix(DNAbin)
	inform <- seg.sites(DNAbin)
	sppSeqs <- lapply(unique(sppVector), function(x) which(sppVector == x))
		
	siteCheck <- function(DNAbin, spp, site, block = 0, category = "pure"){
		blocking <- function(xx) paste(as.character(xx), collapse = "")
		inGroup <- apply(DNAbin[spp, c( site : (site + block)) ], 1, blocking)
		outGroup <- apply(DNAbin[-spp, c( site : (site + block)) ], 1, blocking)
		exclusives <- !(inGroup %in% outGroup) 
		#A 'res' of TRUE means that the nucleotide in the sp. is NOT present in the rest of the spp.
		sumExclusive <- sum(as.numeric(exclusives))
		if(category == "all" | sumExclusive == 0) res  <- as.logical(sumExclusive)
		if(category == "pure") res  <- sumExclusive == length(exclusives)
		if(category == "private" & sumExclusive > 0) res  <- sumExclusive != length(exclusives)
		res
		#list(res, inGroup, outGroup)
	}
	
	inform <- inform[(inform + block) <= dim(DNAbin)[2]]
	
	li <- list()
	for(i in 1:length(sppSeqs)){
		li[[i]] <- NA
		for(j in 1:length(inform)){
			li[[i]][j] <- siteCheck(DNAbin = DNAbin, sppSeqs[[i]], inform[j], block = block, category = category)
		}
	}
	out <- lapply(li, function(x) inform[which(x)])
	names(out) <- unique(sppVector)
	out
}