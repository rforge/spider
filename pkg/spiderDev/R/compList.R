#Compares two lists

#returnList = TRUE gives a list of logical vectors
#returnList = FALSE gives a logical vector

compList <- function(list1, list2, returnList = FALSE){
	outList <- list()
	length(outList) <- length(list1)
	for(i in 1:length(list1)){
		for(j in 1:length(list2)){
			outList[[i]][j] <- setequal(list1[[i]], list2[[j]])
		}
	}
	outVec <- sapply(outList, function(x) as.logical(sum(as.numeric(x))))
	if(returnList) outList else outVec
}