\name{nodeDesc}
\alias{nodeDesc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Return the descendants of nodes}

\description{This function calculates AIC values, weights and model-weighted average number of entities inferred using GMYC.}

\usage{
nodDesc(tr, node, tips.only = TRUE)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tr}{An object of class `phylo'.}
  \item{node}{Node for which the descendants are desired.}
  \item{tips.only}{Logical. Should only tip numbers be returned, or should internal nodes be returned also. Default of TRUE, only tip numbers returned.}
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

data(anoteropsis)
anoTr <- nj(dist.dna(anoteropsis))

nodeDesc(anoTr, 51)

nodeDesc(anoTr, 51, tips.only = FALSE)

anoTr$tip.label[nodeDesc(anoTr, 51)]

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
