slideBoxplots <-
function(dat, width, spp, interval = 1, method="nonCon"){
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
	if(method == "overall"){
		#Boxplots of overall distance matrix
		bp_out <- lapply(win_dist, function(x) boxplot(x, plot=FALSE))
	}
	if(method == "interAll"){
		#Boxplots of intra- and inter-specific distances
		spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
		bp_InterSpp_out <- lapply(spp_dist, function(x) boxplot(x$inter, plot=FALSE))
		bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))
	}
	if(method == "nonCon"){
		#Boxplots of closest non-conspecific distance
		spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
		bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))
		spp_nonCon <- lapply(win_dist, nonConDist)
		bp_InterSpp_out <- lapply(spp_nonCon, function(x) boxplot(x, plot=FALSE))
		bp_range_out <- c(0, max(unlist(spp_nonCon), na.rm = TRUE))
	}
	
rm(list = ls()[!ls() %in% c(ls(pattern="_out"), ls(pattern="thod"))])
distMeasures <- FALSE
treeMeasures <- FALSE
output <- as.list(environment())
class(output) <- "slidWin"
output
}


boxes <- slideBoxplots(anoteropsis, 50, sppNames)


slideBoxplotsNonCon <-
function(dat, width, spp, interval = 1){
	#Boxplots of intra- and inter-specific distances
	spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
	bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))
	spp_nonCon <- lapply(win_dist, nonConDist)
	bp_InterSpp_out <- lapply(spp_nonCon, function(x) boxplot(x, plot=FALSE))
	bp_range_out <- c(0, max(unlist(spp_nonCon), na.rm = TRUE))

rm(list = ls()[!ls() %in% c(ls(pattern="_out"), ls(pattern="thod"))])
distMeasures <- FALSE
treeMeasures <- FALSE
output <- as.list(environment())
class(output) <- "slidWin"
output
}

