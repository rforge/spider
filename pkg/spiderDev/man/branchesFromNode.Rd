\name{branchesFromNode}
\alias{branchesFromNode}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return the indices of branches descending from a given node}

\description{This function returns the indices of the branches descending from a given node.}

\usage{
branchesFromNode(phy, node)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{An object of class `phylo'.}
  \item{node}{Node for which the descending edges are desired.}
}

\details{
}

\value{
A numeric vector giving the descendant edge indices.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{nodeDesc}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(anoteropsis)
anoTr <- nj(dist.dna(anoteropsis))

branchesFromNode(anoTr, 51)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
