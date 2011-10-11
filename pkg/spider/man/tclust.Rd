\name{tclust}
\alias{tclust}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Clustering by a threshold}

\description{Clusters individuals within the threshold of each other.}

\usage{
tclust(distobj, threshold = 0.01)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{distobj}{A distance object (usually from dist.dna()).}
  \item{threshold}{Distance cutoff for identifications. Default of 0.01 (1\%)}
}

\details{

}

\value{
A list with each element giving the index of the individuals within the threshold of each other. 
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{dist.dna}}, 
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(anoteropsis)
anoDist <- dist.dna(anoteropsis)

tclust(anoDist)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
