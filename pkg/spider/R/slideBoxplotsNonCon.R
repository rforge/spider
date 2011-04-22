slideBoxplotsNonCon <-
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
	
	#Boxplots of intra- and inter-specific distances
	spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
	bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))
	spp_nonCon <- lapply(win_dist, nonConDist)
	bp_InterSpp_out <- lapply(spp_nonCon, function(x) boxplot(x, plot=FALSE))
	bp_range_out <- c(0, max(unlist(spp_nonCon), na.rm = TRUE))

rm(list = ls()[!ls() %in% ls(pattern="_out")])
distMeasures <- FALSE
treeMeasures <- FALSE
output <- as.list(environment())
class(output) <- "slidWin"
output
}

