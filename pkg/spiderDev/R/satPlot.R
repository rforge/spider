satPlot <- function(DNAbin){
	Pdist <- dist.dna(DNAbin, model = "raw", pairwise.deletion = TRUE)
	Tree <- nj(Pdist)
	Phy <- as.phyDat(DNAbin)
	Pml <- pml(Tree, Phy, model = "HKY", k = 4)
	MLtree <- optim.pml(Pml, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE)
	MLdist <- cophenetic(MLtree$tree)
	Pdist <- as.matrix(Pdist)
	satList <- list(Pdist = Pdist,  MLdist = MLdist)
	plot(satList$Pdist ~ satList$MLdist, xlab = "ML distance", ylab = "p-distance")
	abline(a = 0, b = 1)
	invisible(satList)
}