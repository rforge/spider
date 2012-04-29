phylo2MRP <- function(phy){
	splits <- prop.part(phy)
	cols <- length(attr(splits, "number"))
	rows <- length(attr(splits, "labels"))
	mat <- matrix(0, ncol = as.numeric(cols), nrow = as.numeric(rows), dimnames = list(attr(splits, "labels"), NULL))
	for(i in 1:cols) mat[splits[[i]], i] <- 1
	mat
}