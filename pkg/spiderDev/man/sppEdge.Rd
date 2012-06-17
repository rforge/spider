\name{sppEdge}
\alias{sppEdge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Returns }

\description{This function calculates AIC values, weights and model-weighted average number of entities inferred using GMYC.}

\usage{
sppEdge(phy, sppVector, cols = NULL)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{An object of class `phylo'.}
  \item{sppVector}{The species vector (see \code{\link{sppVector}}).}
  \item{cols}{Vector to represent the colours for each species. Recycled if necessary.}
}

\details{
This function implements equations 3 to 6 in Powell (2011). 
}

\value{
A numeric vector giving the descendant tip numbers and (if \code{tips.only = FALSE}) node numbers 
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{clustGMYC}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
data(dolomedes)
doloTr <- nj(dist.dna(dolomedes))
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

edgeCol <- sppEdge(doloTr, doloSpp)
plot(doloTr, edge.color = edgeCol)

data(anoteropsis)
anoTr <- nj(dist.dna(anoteropsis))
anoSpp <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"),  function(x) paste(x[1], x[2], sep="_"))

edgeCol <- sppEdge(anoTr, anoSpp)
plot(anoTr, edge.color = edgeCol)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
