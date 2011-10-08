tclust <- function(distobj, threshold = 0.01){
	distobj <- as.matrix(distobj)
	unique(apply(distobj, 2, function(x) which(x < threshold)))
}