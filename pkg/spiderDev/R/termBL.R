termBL <- function(phylo){
	tipLab <- phylo$tip.label
	TBind <- match(1:length(tipLab), phylo$edge[,2])
	brLengths <- phylo$edge.length[TBind]
	names(brLengths) <- tipLab
	brLengths
}




