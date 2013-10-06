narrowingWindow2 <- function(DNAbin, interval = 1, direction = "left"){
	align <- as.matrix(DNAbin)
	len <- dim(align)[[2]]

	if (direction == "left") {
		iter <- seq(1, len, by = interval)
		wins <- lapply(iter, function(xx) align[, xx:len])
	}
	
	if (direction == "right") {
		iter <- (len + 1) - seq(1, len, by = interval)
		wins <- lapply(iter, function(xx) align[, 1:xx])
	}
	
	if (direction == "both") {
		iterRight <- (len + 1) - seq(1, len, by = interval)
		iterLeft <- seq(1, len, by = interval)
		wins <- mapply(FUN = function(xx, yy) align[, xx:yy], iterLeft, iterRight)
	}
		
	wins
}

narrowingWindow <- function(DNAbin, interval = 10){
	align <- as.matrix(DNAbin)
	len <- dim(align)[[2]]
	iter <- seq(1, len, by = interval)
	mat <- matrix(NA, ncol = length(iter), nrow = length(iter))
	inds <- mat[] <- 1:length(mat)
	matIndices <- lapply(inds, function(xx) which(mat == xx, arr.ind = TRUE))
	wins <- lapply(matIndices, function(xx) align[, iter[xx[1]] : iter[xx[2]]])
	wins
}

giveMeThePicture <- function(DNAbin){
	aa <- narrowingWindow2(DNAbin, direction = "left")
	bb <- narrowingWindow2(DNAbin, direction = "right")
	cc <- narrowingWindow2(DNAbin, direction = "both")
	aaGC <- sapply(aa, function(xx) mean(dist.dna(xx)))
	bbGC <- sapply(bb, function(xx) mean(dist.dna(xx)))
	ccGC <- sapply(cc, function(xx) mean(dist.dna(xx)))
	plot(aaGC)
	points(bbGC, col = "blue")
	points(seq(1, 850, 2), ccGC[1:425], col = "red")
}