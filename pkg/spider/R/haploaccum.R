haploaccum<- function (dat, method = "random", permutations = 100, ...){

    if (is.list(dat)) dat <- as.matrix(dat)	# If seq dat is list, turn it matrix
    if (length(grep("[-|?|r|y|m|k|w|s|b|d|h|v|n]", dat))>0)
        message("There are missing or ambiguous data, which may cause an overestimation of the number of haplotypes")

    seq_names<-as.vector(rownames(dat))	# Create a vector of seq name
    nms.dat <- deparse(substitute(dat))		# Create a character object from seq data
    rownames(dat) <- NULL				# Remove row names
    y <- apply(dat, 1, rawToChar)		# Translate sequences
    n <- length(y)				# Number of sequences
    keep <- nhaplo <- 1L		# To remove?
    no <- list(1L)			# To remove?
    for (i in 2:n) {
        already.seen <- FALSE
        j <- 1L
        while (j <= nhaplo) {
            if (y[i] == y[keep[j]]) {
                no[[j]] <- c(no[[j]], i)
                already.seen <- TRUE
                break
            }
            j <- j + 1L
        }
        if (!already.seen) {
            keep <- c(keep, i)
            nhaplo <- nhaplo + 1L
            no[[nhaplo]] <- i
        }
    }
    obj <- dat[keep, ]
    rownames(obj) <- as.character(as.roman(1:length(keep)))
    class(obj) <- c("haplotype", "DNAbin")
    attr(obj, "index") <- no
    attr(obj, "from") <- nms.dat
    n_haplo<-length(no)
    z<- matrix(nrow=length(seq_names),ncol=n_haplo,0)
    colnames(z)<-as.vector(unlist(attributes(obj)$dimnames[1]))
    rownames(z)<-seq_names
    for (i in c(1:n_haplo)){
	for (j in c(1:length(as.vector(unlist(attributes(obj)$index[i]))))){
		z[unlist(attributes(obj)$index[i])[j],i]<- 1
	}
    }
    z <- z[, colSums(z) > 0, drop=F]
    n <- nrow(z)
    h <- ncol(z)
    sequences <- 1:n
    if (h == 1) {
	  z <- t(z)
        n <- nrow(z)
        h <- ncol(z)
    }
    accumulator <- function(x, sequences) {
        rowSums(apply(x[sequences, ], 2, cumsum) > 0)
    }
    METHODS <- c("collector", "random")
    method <- match.arg(method, METHODS)
    haploaccum <- sdaccum <- perm <- NULL
    if (n == 1)
        message("There is only 1 sequence. No accumulation was possible")
    switch(method, collector = {
        haploaccum <- accumulator(z, sequences) },
	random = {
        perm <- array(dim = c(n, permutations))
        for (i in 1:permutations) {
            perm[, i] <- accumulator(z, sample(n))
        }
        haploaccum <- apply(perm, 1, mean)
        sdaccum <- apply(perm, 1, sd)
    })
    out <- list(call = match.call(), method = method, sequences = sequences,
                n.haplotypes = haploaccum, sd = sdaccum, perm = perm)
    class(out) <- "haploaccum"
    out
}
