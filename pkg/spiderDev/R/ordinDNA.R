#Preliminaries
ras <- read.dna("/home/sam/Documents/Presentations/Barcoding conference/rasbora.fas", format="fasta")
rasDist <- dist.dna(ras)
rasNames <- dimnames(ras)[[1]]
rasSpp1 <- strsplit(rasNames, split = "\\|")
rasSpp <- sapply(rasSpp1, function(x) x[2])



#
rasSppFac <- as.factor(rasSpp)
plotCol <-
c("#D33F6A", "#D95260", "#DE6355", "#E27449", "#E6833D", "#E89331", 
"#E9A229", "#EAB12A", "#E9C037", "#E7CE4C", "#E4DC68", "#E2E6BD", 
"#8E063B", "#A0323E", "#B04D41", "#C06544", "#CD7B48", "#D8904D", 
"#E0A455", "#E7B65E", "#EAC76A", "#EAD577", "#E8E188", "#E2E6BD", 
"#023FA5", "#5868AC", "#848DBC", "#A9AECB", "#C8CAD8", "#DDDEE0", 
"#E1DDDD", "#D9C6C9", "#CEA5AC", "#BE7E8A", "#A94F64", "#8E063B"
)
transCol <- paste(plotCol, "CC", sep="")


pal(heat_hcl(20, c = c(80, 30), l = c(30, 90), power = c(1/5, 1.5)))
pal(c(heat_hcl(12), 
	heat_hcl(12, c = c(80, 30), l = c(30, 90), power = c(1/5, 1.5)),
	diverge_hcl(12)
	))

#Do the ordination
pco <- cmdscale(rasDist, 2, eig = TRUE)
#Figure out the centroid positions
centroids <- aggregate(firstTwo, list(rasSpp), mean)
#Determine width of circle
maxDist <- function(x){
		aa <- matrix(x, ncol = 2)
		aa <- rbind(apply(aa, 2, mean),aa)
		bb <- as.matrix(dist(aa))
		max(bb[,1])
	}
radius <- sapply(unique(rasSpp), function(x) maxDist2(firstTwo[rasSpp==x,]))
radius <- radius[match(sort(names(radius)), names(radius))]


plot(pco$points[,1], pco$points[,2], type="n", asp=1)
symbols(centroids[,2], centroids[,3], circles=radius2, bg=transCol[as.numeric(sort(unique(rasSppFac)))], inches=FALSE, add=TRUE)
points(centroids[,2], centroids[,3], pch=21, bg=plotCol[as.numeric(sort(unique(rasSppFac)))])
points(pco$points[,1], pco$points[,2], pch=22, bg=plotCol[as.numeric(rasSppFac)], cex=0.5)
text(centroids[,2], centroids[,3], labels=sort(unique(rasSpp)), cex=0.3)



pdf(file="/home/sam/Desktop/testPlot.pdf", width=20, height=10)
plot(pco$points[,1], pco$points[,2], type="n", asp=1)
symbols(centroids[,2], centroids[,3], circles=radius2, bg=transCol[as.numeric(sort(unique(rasSppFac)))], inches=FALSE, add=TRUE)
points(centroids[,2], centroids[,3], pch=21, bg=plotCol[as.numeric(sort(unique(rasSppFac)))])
points(pco$points[,1], pco$points[,2], pch=22, bg=plotCol[as.numeric(rasSppFac)], cex=0.5)
text(centroids[,2], centroids[,3], labels=sort(unique(rasSpp)), cex=0.3)

dev.off()











