slideBoxplots <-
function(dat, width, spp, interval = 1){
	#Produce distance matrix, number of zero cells of full sequence
	boxplot_out <- TRUE
	dat <- as.matrix(dat)
	dimnames(dat)[[1]] <- spp
	datd <- dist.dna(dat, pairwise.deletion = TRUE)
	#Create the windows
	win <- slidingWindow(dat, width-1, interval = interval)
	pos_out <- sapply(win, function(x) attr(x, "window")[1])
	win_dist <- lapply(win, function(x) dist.dna(x, pairwise.deletion = TRUE))
	bp_range_out <- range(win_dist,na.rm=TRUE)
	#Boxplots of overall distance matrix
	bp_out <- lapply(win_dist, function(x) boxplot(x, plot=FALSE))
	#Boxplots of intra- and inter-specific distances
	spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
	bp_InterSpp_out <- lapply(spp_dist, function(x) boxplot(x$inter, plot=FALSE))
	bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))

rm(list = ls()[!ls() %in% ls(pattern="_out")])
distMeasures <- FALSE
treeMeasures <- FALSE
output <- as.list(environment())
class(output) <- "slidWin"
output
}

