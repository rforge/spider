slidingWindow <-
function(align, width, interval = 1){
	annote <- function(x){
		y <- align[ , x:(x+width)]
		attr(y, "window") <- c(x, x+width)
		y
	}
	if(interval == "codons") interval <- 3
	align <- as.matrix(align)
	len <- dim(align)[[2]]
	iter <- seq(1, len-width, by = interval)
	li <- lapply(iter, function(x) annote(x))
	li
}

