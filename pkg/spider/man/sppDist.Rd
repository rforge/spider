\name{sppDist}
\alias{sppDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Intra and inter-specific distances 
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sppDist(dat, spp)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
}
  \item{spp}{
%%     ~~Describe \code{spp} here~~
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
function(dat, spp){
	dat <- as.matrix(dat)
	attr(dat, "dimnames")[[1]] <- spp
	taxa <- unique(spp)
	intra <- list()
	inter <- list()
	for(i in 1:length(taxa)){
		for(j in 1:length(taxa)){
			sppMat <- dat[which(dimnames(dat)[[1]] == taxa[i]), which(dimnames(dat)[[1]] == taxa[j])]
			if(taxa[i] == taxa[j]) intra[[length(intra)+1]] <- sppMat[lower.tri(sppMat)] else inter[[length(inter)+1]] <- sppMat
			}
	}
list(inter = unlist(inter), intra = unlist(intra))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
