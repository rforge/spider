\name{tree.comp}
\alias{tree.comp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tree comparisons
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tree.comp(x, y, method = "prop")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{y}{
%%     ~~Describe \code{y} here~~
}
  \item{method}{
%%     ~~Describe \code{method} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
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
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
