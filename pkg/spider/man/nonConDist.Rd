\name{nonConDist}
\alias{maxInDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nearest non-conspecific and maximum intra-specific distances
}
\description{
These functions give the distances to the nearest non-conspecific and furthest conspecific representatives for each individual in the dataset respectively.
}
\usage{
nonConDist(dat, spp, propZero = FALSE)
}

\usage{
maxInDist(dat, spp, propZero = FALSE)
}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{dat}{
Distance matrix
}
  \item{spp}{
Species vector (see \code{\link{sppVector}}). Default of NULL
}
  \item{propZero}{
Logical. TRUE gives the proportion of zero non-conspecific distances 
}
}
\details{
\code{spp} needs to be given if the names of the individuals in the distance matrix do not satisfy the requirements for a species vector.

These two functions can be used to create an alternative version of the `barcoding gap'.
}

\value{
if propZero=FALSE, a numeric vector giving the distance of the closest non-conspecific individual (\code{nonConDist}) or the most distant conspecific individual (\code{maxInDist}).

if propZero=TRUE, a single number giving the proportion of zero distances. 
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(anoteropsis)
ddat <- dist.dna(anoteropsis)
sppName <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"), function(x) paste(x[1], x[2], sep="_"))

nonConDist(ddat, sppName)
nonConDist(ddat, sppName, propZero=TRUE)

maxInDist(ddat, sppName)
maxInDist(ddat, sppName, propZero=TRUE)

#Names of the distance matrix is the species vector
names(anoteropsis) <- sppName
ddat2 <- dist.dna(anoteropsis)
nonConDist(ddat2)

#Barcoding gap
inter <- nonConDist(ddat, sppName)
intra <- maxInDist(ddat, sppName)
hist(inter-intra)


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
