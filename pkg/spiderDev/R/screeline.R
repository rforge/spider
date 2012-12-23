screeline <- function(distObj, breaks = 20){
	thresholds <- seq(0, max(distObj), length.out = breaks + 1)
	thresholds <- thresholds[-1]
	clusts <- sapply(thresholds, function(xx) length(tclust(distObj, threshold = xx)))
	output <- list(y = clusts, x = thresholds)
	output
}