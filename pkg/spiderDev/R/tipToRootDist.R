tipToRootDist <- function(phy){
	phyBR <- branches.per.tip(phy)
	phyBL <- lapply(phyBR, function(x) phy$edge.length[x])
	phyBS <- sapply(phyBL, sum)
	phyBS
}
