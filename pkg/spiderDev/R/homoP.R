homoP <- function(string, num){
	out <- c(1, rep(NA, length(string) - 1))
	for(i in 2:length(string)) {
		if(string[i] == string[i-1]) out[i] <- out[i-1] else out[i] <- out[i-1] +1
	}
	hpList <- split(string, out)
	#hpList
	length(which(sapply(hpList, length) >= num))
}
