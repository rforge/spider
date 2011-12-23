\name{tipToRootDist}
\alias{tipToRootDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Distance from root to tip}

\description{The distance from the root for each tip in a tree.}

\usage{
tipToRootDist(phy)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{A `phylo' object.}
}

\details{
}

\value{
A vector with the distance from the root for each tip of the tree.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
For more information on some of the different matching criteria see: \code{\link{nearNeighbour}},  \code{\link{monophyly}}
}

\examples{

data(dolomedes)
doloTr <- nj(dist.dna(dolomedes))

tipToRootDist(doloTr)


}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
