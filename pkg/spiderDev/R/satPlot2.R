satPlot2 <- function(DNAbin){
	alignDist<- dist.dna(DNAbin, model = "raw")
	plot(alignDist, main = "p-distances")
	abline(h = 0.1, col = "blue", lwd = 5, lty = 2)
}