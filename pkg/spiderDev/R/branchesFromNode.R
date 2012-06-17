branchesFromNode <- function(phy, node){
	Ntips <- length(phy$tip.label)
	res <- edge <- which(phy$edge[ ,1] == node)
	desc <- phy$edge[edge,2]
	while(sum(!desc %in% 1:Ntips) > 0){
		edge <- which(phy$edge[,1] %in% desc)
		res <- c(res, edge)
		desc <- phy$edge[edge,2]
	}
	res
}
