\name{phylo2MRP}
\alias{phylo2MRP}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create a matrix representing a tree}

\description{The distance from the root for each tip in a tree.}

\usage{
phylo2MRP(phy)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{A `phylo' object.}
}

\details{
}

\value{
A matrix with rows = number of tips on tree and columns = number of nodes. 
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
}

\examples{

data(dolomedes)
doloTr <- nj(dist.dna(dolomedes))

phylo2MRP(doloTr)


}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
