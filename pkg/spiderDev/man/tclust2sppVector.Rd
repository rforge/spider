\name{tclust2sppVector}
\alias{tclust2sppVector}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Creates a species vector from the results of tclust.}

\description{This function calculates AIC values, weights and model-weighted average number of entities inferred using GMYC.}

\usage{
tclust2sppVector(tclust)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tclust}{A list, the result from \code{\link{tclust}}}
}

\details{

}

\value{
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{tclust}}, \code{\link{sppVector}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
data(anoteropsis)
anoDist <- dist.dna(anoteropsis)

anoClust <- tclust(anoDist)
tclust2sppVector(anoClust)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
