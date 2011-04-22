\name{sppDistMatrix}
\alias{sppDistMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean intra- and inter-specific distance matrix
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sppDistMatrix(dat, spp)
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
	pair.mat <- matrix(data = NA, nrow = length(taxa), ncol = length(taxa), dimnames = list(one = taxa,two = taxa))
	for(i in 1:length(taxa)){
		for(j in 1:length(taxa)){
			sppMat <- dat[which(dimnames(dat)[[1]] == taxa[i]), which(dimnames(dat)[[1]] == taxa[j])]
			if(taxa[i] == taxa[j]) pair.mat[i,j] <- mean(sppMat[lower.tri(sppMat)]) else pair.mat[i,j] <- mean(sppMat)
		}
	}
pair.mat
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
