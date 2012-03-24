permDNA <- function(K){
	DNA <- c("a", "g", "t", "c")
	reps <- 1:K
	n <- 4^reps
	eaches <- c(1, n[-length(n)])
	mat <- mapply(function(xx, yy) rep(DNA, each = xx, len = yy), eaches, n)
	if(K == 1) output <- DNA else {
	output <- do.call(cbind, mat)
		output <- apply(output, MARGIN = 1, function(xx) paste(xx, collapse = ""))
	}
	output
}