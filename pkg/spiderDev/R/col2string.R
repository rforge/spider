col2string <- function(x){
	aa <- as.hexmode(col2rgb(x))
	paste("#", paste(aa, collapse=""), sep="")
}
