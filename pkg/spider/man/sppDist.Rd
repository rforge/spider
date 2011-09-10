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
A distance matrix
}
  \item{spp}{
The species vector (see \code{\link{sppVector}})
}
}
\details{
This function can be used to produce histograms and other charts exploring the `barcode gap'
}
\value{
A list with two elements
\item{inter} A numeric vector containing ALL inter-specific pairwise distances
\item{intra} A numeric vector containing ALL intra-specific pairwise distances

}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{sppDistMatrix}}
}
\examples{
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(names(dolomedes), 1, 5)

sppDist(doloDist, doloSpp)

#Histogram of the barcode gap

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
