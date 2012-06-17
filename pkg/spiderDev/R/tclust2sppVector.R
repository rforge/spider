tclust2sppVector <- function(tclust){
    DoubLett <- paste(rep(LETTERS, rep(26,26)), LETTERS, sep="")
    sppVector <- rep(NA, length(unlist(tclust)))
    for(i in 1:length(tclust)) sppVector[ tclust[[i]] ] <- DoubLett[i]
    sppVector
}
