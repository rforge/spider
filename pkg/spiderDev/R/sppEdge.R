sppEdge <- function(phy, sppVector, cols = NULL){
	phyMRCA <- mrca(phy)
	Ntips <- length(phy$tip.label)
	sppList <- lapply(unique(sppVector), function(xx) which(sppVector == xx))
	sppSingles <- which(sapply(sppList, length) == 1)
	
	if (is.null(cols)) cols <- rainbow(20)
	
	cols <- rep(cols, length.out = length(sppList))
	
	sppMRCA <- lapply(sppList, function(xx) phyMRCA[xx, xx])
	sppNodes <- sapply(sppMRCA, function(xx) if (class(xx) == "matrix") min(xx[xx > Ntips]) else match(xx, phy$edge[,2]))
	sppEdges <- lapply(sppNodes, function(xx) branchesFromNode(phy, xx))

	edgeCol <- rep("black", dim(phy$edge)[1])
	for (i in 1:length(sppEdges)) edgeCol[sppEdges[[i]]] <- cols[i]
	
	edgeCol
}
