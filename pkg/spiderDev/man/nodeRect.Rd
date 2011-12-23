\name{nodeRect}
\alias{nodeRect}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plots rectangles on nodes}

\description{Plots rectangles of a given length on the nodes of a phylogenetic tree.}

\usage{
nodeRect(start, end = NULL, node, width = 0.05, lty = 1, col = "blue", lwd = 1)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{start}{Where rectangle should start, or (if \code{end = NULL}) half the width of the rectangle.}
  \item{end}{Where rectangle should end}
  \item{node}{Optional vector giving the nodes on which rectangles should be plotted}
  \item{width}{Width of rectangle. Default of 0.05}
  \item{lty}{Line type. Default of 1 (solid line). See \code{\link{par}} for more details.}
  \item{col}{Fill colour. Default of \code{"blue"}.}
  \item{lwd}{Rectangle outline width. Default of 1.}
}

\details{
}

\value{
Plots rectangles on the nodes of the most recently plotted tree.
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

doloRect <- runif(35, min = 0.001, max = 0.003)

plot(doloTr)

nodeRect(doloRect, width = 0.2)


}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
