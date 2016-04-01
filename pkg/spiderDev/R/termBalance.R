termBalance <- function(phylo){
	tipLab <- phylo$tip.label
	TBind <- match(1:length(tipLab), phylo$edge[,2])
	bal <- polyBalance(phylo)
	nodeind <- phylo$edge[TBind,1]
	balspp <- apply(bal[match(nodeind, as.numeric(dimnames(bal)[[1]])),], 1, max)
	names(balspp) <- tipLab
	balspp
}