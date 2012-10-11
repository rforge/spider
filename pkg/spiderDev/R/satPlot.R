satPlot <- function(DNAbin){
	Pdist <- dist.dna(DNAbin, model = "raw")
	Tree <- nj(Pdist)
	Phy <- as.phyDat(DNAbin)
	Pml <- pml(Tree, Phy, model = "HKY", k = 4)
	MLtree <- optim.pml(Pml, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE)
	MLdist <- cophenetic(MLtree$tree)
	Pdist <- as.matrix(Pdist)
	list(Pdist = Pdist,  MLdist = MLdist)
}