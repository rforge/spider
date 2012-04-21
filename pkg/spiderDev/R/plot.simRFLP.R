plot.simRFLP <- function(x, sppcol = NULL, linecol = "grey25", linewex = 0.4, ...){
	len <- sapply(x, length)
	xx <- rep(1:length(x), times = len)
	yy <- unlist(x)
	if(!is.null(sppcol)){ 
		if(class(sppcol) == "character") sppcol <- as.factor(sppcol)
		endCols <- rep(as.numeric(sppcol), times = len)
	}
		else endCols <- linecol
	
	plot(xx, yy, type = "n", ...)
	segments(xx - linewex, yy, x1 = xx + linewex, col = endCols, lwd = 10)
}