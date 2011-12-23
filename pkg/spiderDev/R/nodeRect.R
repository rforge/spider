nodeRect <- function(start, end = NULL, node, width = 0.05, lty = 1, col = "blue", lwd = 1){
	lastPP <- get("last_plot.phylo", envir = .PlotPhyloEnv)
	if(missing(node)) node <- (lastPP$Ntip + 1):length(lastPP$xx)
	XX <- lastPP$xx[node]
	YY <- lastPP$yy[node]
	if(!is.null(end)) {
		xxx1 <- start
		xxx2 <- end
	} else {
		xxx1 <- XX + start 
		xxx2 <- XX - start 
	}
	half <- width/2
	rect(xxx1, YY - half, xxx2, YY + half, lty = lty, col = col, lwd = lwd)
}
