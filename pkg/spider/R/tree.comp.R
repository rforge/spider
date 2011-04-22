tree.comp <-
function (x, y, method = "prop") {
	x <- unroot(x)
	y <- unroot(y)
	nx <- length(x$tip.label)
	bp1 <- .Call("bipartition", x$edge, nx, x$Nnode, PACKAGE = "ape")
	bp1 <- lapply(bp1, function(xx) sort(x$tip.label[xx]))
	ny <- length(y$tip.label)
	bp2.tmp <- .Call("bipartition", y$edge, ny, y$Nnode, PACKAGE = "ape")
	bp2 <- lapply(bp2.tmp, function(xx) sort(y$tip.label[xx]))
	bp2.comp <- lapply(bp2.tmp, function(xx) setdiff(1:ny, xx))
	bp2.comp <- lapply(bp2.comp, function(xx) sort(y$tip.label[xx]))
	q1 <- length(bp1)
	q2 <- length(bp2)
	p <- 0
        for (i in 1:q1) {
            for (j in 1:q2) {
                if (identical(bp1[[i]], bp2[[j]]) | identical(bp1[[i]], 
                  bp2.comp[[j]])) {
                  p <- p + 1
                  break
                }
            }
	}
	if(method == "shallow"){
	    shallow <- which(node.depth(x)[node.depth(x) > 1] <= median(node.depth(x)[node.depth(x) > 1]))
	    p2 <- 0
		for (i in shallow) {
		    for (j in 1:q2) {
			if (identical(bp1[[i]], bp2[[j]]) | identical(bp1[[i]], 
			  bp2.comp[[j]])) {
			  p2 <- p2 + 1
			  break
			}
		    }
		}
	dT <- p2/length(shallow)
	}
	if(method == "PH85") dT <- q1 + q2 - 2 * p
	if(method =="prop") dT <- p/q1
dT
}

