maxInDist <- 
function(dat, spp = NULL, propZero = FALSE){
    dat <- as.matrix(dat)
    if(length(spp) > 0) dimnames(dat)[[1]] <- spp
    conSpecDists <- list()
    for (i in 1:length(dimnames(dat)[[1]])) {
        conSpec <- dimnames(dat)[[1]] == dimnames(dat)[[1]][i]
        conSpecDists[[i]] <- max(dat[conSpec, i])
    }
    if (propZero) 
        output <- length(which(unlist(conSpecDists) == 0))/length(unlist(conSpecDists))
    else output <- unlist(conSpecDists)
    output
}
