monophyly <-
function(phy, pp=NA, singletonsMono = TRUE){
res <- list()
x <- lapply(unique(phy$tip.label),function(y) which(phy$tip.label==y))
singletons <- which(sapply(x, length) == 1)
nonSingletons <- which(sapply(x, length) != 1)
ifelse(is.na(pp) ,  y <- .Call("bipartition", phy$edge, length(phy$tip.label), phy$Nnode, PACKAGE = "ape"),  y <- pp)
z <- node.depth(phy)[node.depth(phy) > 1] 
for(i in nonSingletons){
res[i] <- NA
len <- length(x[[i]])
for(j in 1:length(y[which(z == len)])) res[[i]][j] <- sum(as.numeric(!x[[i]]%in%y[which(z == len)][[j]]))
}
out <- sapply(res, function(x) as.logical(sum(as.numeric(x < 1))))
out[singletons] <- singletonsMono
out
}

