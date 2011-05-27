monophyly <- 
function (phy, pp = NA, singletonsMono = TRUE) 
{
    res <- list()
    x <- lapply(unique(phy$tip.label), function(y) which(phy$tip.label == 
        y))
    sppTab <- sapply(x, length)
    singletons <- which(sppTab == 1)
    nonSingletons <- which(sppTab != 1)
    ifelse(is.na(pp), y <- .Call("bipartition", phy$edge, length(phy$tip.label), 
        phy$Nnode, PACKAGE = "ape"), y <- pp)
    z <- sapply(y, length)
    defNon <- which(!sppTab %in% z)
    poss <- which(sppTab %in% z)
    for (i in poss) {
        res[i] <- NA
        for (j in 1:length(y[which(z == sppTab[i])])) res[[i]][j] <- sum(as.numeric(!x[[i]] %in% 
            y[which(z == sppTab[i])][[j]]))
    }
    out <- sapply(res, function(x) as.logical(sum(as.numeric(x < 
        1))))
    if(is.list(out)) out <- rep(singletonsMono, length(singletons))
    out[defNon] <- FALSE
    out[singletons] <- singletonsMono
    out
}

