homoP <- function(sequence, num){
	rleSeq <- rle(as.vector(as.character(sequence)))

	length(which(rleSeq$lengths > num))
}
