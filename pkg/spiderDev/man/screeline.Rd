\name{screeline}
\alias{screeline}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Number of clusters over a range of thresholds}

\description{Cross-correlation between sequences in an alignment to detect potentially incorrectly aligned sequences.}

\usage{
screeline(distObj, breaks = 20)
}

\arguments{
	\item{distObj}{An object of class \code{DNAbin}}
	\item{breaks}{The number of thresholds at which the number of clusters should be calculated. Default of 20.}
}

\details{
}

\value{
Returns a list  with the following elements:
\item{x}{The threshold value.}
\item{y}{The number of clusters in the data at that threshold.}

}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{tclust}}
}

\examples{

data(dolomedes)
doloDist <- dist.dna(dolomedes, model = "raw")

screeline(doloDist)
plot(screeline(doloDist), type = "l", xlab = "Threshold", ylab = "Number of clusters")
plot(screeline(doloDist, breaks = 30), type = "l", xlab = "Threshold", ylab = "Number of clusters")

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
	