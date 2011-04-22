sppDist <-
function(dat, spp){
	dat <- as.matrix(dat)
	attr(dat, "dimnames")[[1]] <- spp
	taxa <- unique(spp)
	intra <- list()
	inter <- list()
	for(i in 1:length(taxa)){
		for(j in 1:length(taxa)){
			sppMat <- dat[which(dimnames(dat)[[1]] == taxa[i]), which(dimnames(dat)[[1]] == taxa[j])]
			if(taxa[i] == taxa[j]) intra[[length(intra)+1]] <- sppMat[lower.tri(sppMat)] else inter[[length(inter)+1]] <- sppMat
			}
	}
list(inter = unlist(inter), intra = unlist(intra))
}

