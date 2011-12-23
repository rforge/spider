nodeDesc <- function(tr, node, tips.only = TRUE){
	Ntip <- length(tr$tip.label)
	desc <- descNod <- tr$edge[tr$edge[, 1] == node , 2]
	descNod <- descNod[descNod > Ntip]
	while(length(descNod) > 0){
		descNod <- as.vector(sapply(descNod, function(x)tr$edge[tr$edge[, 1] == x, 2]))
		desc <- c(desc, descNod)
		descNod <- descNod[descNod > Ntip]
	}
	if(tips.only) desc[desc <= Ntip] else desc
}
