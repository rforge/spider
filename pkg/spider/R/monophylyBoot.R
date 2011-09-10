monophylyBoot <- 
function (phy, DNAbin, pp = NA, singletonsMono = TRUE, reps = 1000, thresh = 0.7) 
{
    res <- list()
    x <- lapply(unique(phy$tip.label), function(y) which(phy$tip.label == 
        y))
    boot <- boot.phylo(phy, DNAbin, function(x) nj(dist.dna(x)), B = reps)/reps
    sppTab <- sapply(x, length)
    singletons <- which(sppTab == 1)
    nonSingletons <- which(sppTab != 1)
    ifelse(is.na(pp), y <- .Call("bipartition", phy$edge, length(phy$tip.label), 
        phy$Nnode, PACKAGE = "ape"), y <- pp)
    z <- sapply(y, length)
    defNon <- which(!sppTab %in% z)
    poss <- which(sppTab %in% z)
    bb <- lapply(sppTab, function(x) boot[which(z == x)])
    tt <- lapply(sppTab, function(x) which(z == x))
    for(i in poss){
	res[i] <- NA
	for(j in 1:length(tt[[i]])){
		res[[i]][j] <- sum(as.numeric(!x[[i]] %in% y[[ tt[[i]][j] ]]))
		}
	}
    bootCheck <- unlist(bb)[which(unlist(res) == 0)]    
    out <- sapply(res, function(x) as.logical(sum(as.numeric(x < 
        1))))
    if(is.list(out)) out <- rep(singletonsMono, length(singletons))
    out[defNon] <- FALSE
    out[singletons] <- singletonsMono
    out[bootCheck < thresh] <- FALSE
    out
}
