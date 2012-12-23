seeSegSites <- function(DNAbin, col = c("#C8CAD8", "#023FA5")){
	pos <- 1:dim(DNAbin)[2]
	ind <- rep(1, dim(DNAbin)[2])
	ind[seg.sites(DNAbin)] <- 2
	plot(1, 1, xlim=c(0,max(pos)), ylim=c(0,1), xaxt="n", yaxt="n", xlab=NA, ylab=NA, bty="n", type="n")
	abline(v=pos, col=col[ind])
}