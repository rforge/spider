branches.per.tip <- function(phy){
	tips <- length(phy$tip.label)
	root <- tips + 1
	mat <- phy$edge
	li <- list()
	for(i in 1:tips){
		edge <- which(mat[,2] == i)
		res <- mat[edge,1]
		li[[i]] <- edge
		while(res != root){
			edge <- which(mat[,2] == res)
			res <- mat[edge,1]
			li[[i]] <- c(li[[i]], edge)
		}
	}
	li
}