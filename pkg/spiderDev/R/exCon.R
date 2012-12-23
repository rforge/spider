exCon <- function(DNAbin, outlierLabels = "index"){
	if (is.matrix(DNAbin) == FALSE) stop("DNAbin object must be in matrix format")
	
	jackMeans <- list()
	for (i in 1:dim(DNAbin)[1]) {
		jackDist <- dist.dna(DNAbin[-i, ], model = "raw")
		jackMeans[[i]] <- c(mean(jackDist), sd(jackDist))
	}
	
	wholeDist <- dist.dna(DNAbin, model = "raw")
	wholeMean <- mean(wholeDist)
	
	distMeans <- sapply(jackMeans, function(x) x[1])
	highCI <- mean(distMeans) + (1.96 * sd(distMeans))
	lowCI <- mean(distMeans) - (1.96 * sd(distMeans))
	
	above <- which(distMeans > highCI)
	below <- which(distMeans < lowCI)
	outliers <- c(above, below)
	if (outlierLabels == "index") outlierLabel <- outliers
		else if (outlierLabels == "name") outlierLabel <- dimnames(DNAbin)[[1]][outliers]
			else if (outlierLabels == "none") outlierLabel <- rep("", length(outliers))
			else stop("Unknown option given to outlierLabels")
	
	plot(distMeans, ylab = "Mean distance", xlab = "Sequence removed")
	abline(h = highCI, lty = 2, col = "blue")
	abline(h = lowCI, lty = 2, col = "blue")
	abline(h = wholeMean, lty = 1, col = "red")
	text(outliers, distMeans[outliers], outlierLabel, pos = 2, offset = 0.5, cex = 0.8)
	
	list(means = distMeans, highCI = highCI, lowCI = lowCI, above = above, below = below)

}
