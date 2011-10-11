\name{sppDistMatrix}
\alias{sppDistMatrix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Mean intra- and inter-specific distance matrix
}
\description{
Creates a matrix giving the mean distances within and between species.
}
\usage{
sppDistMatrix(dat, spp)
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
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A square matrix with dimensions length(spp). It contains the mean intra specific distances down the diagonal, and the mean pairwise distance between the species in the triangles. The two triangles are identical. 
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
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

sppDistMatrix(doloDist, doloSpp)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
