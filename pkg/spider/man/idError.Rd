\name{idError}
\alias{idError}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sensitivity analysis
}
\description{
Determines the positive, false positive and false negative rates of identification accuracy for a given threshold.
}
\usage{
idError(dat, spp, thresh)
}

\arguments{
  \item{dat}{
Distance matrix
}

\item{spp}{
Species vector (see \code{\link{sppVector}}).
}

  \item{thresh}{
Threshold distance for delimiting intra- and inter-specific variation. Default of 0.01.
}
}

\details{

}

\value{
A table giving the threshold, and number of positive identifications, false negatives and false positives.
}
\references{
Meyer, C. P., and Paulay, G. (2005). DNA barcoding: error rates based on
comprehensive sampling. _PLoS Biology_, *3* (12), 2229-2238.

}
\author{
Rupert Collins <rupertcollins@gmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(anoteropsis)
ddat <- dist.dna(anoteropsis)
sppName <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"), function(x) paste(x[1], x[2], sep="_"))
idError(ddat, sppName)

data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)
idError(doloDist, doloSpp)

#Conduct the analysis over a range of values to determine the optimum threshold
threshVal <- seq(0.001,0.02, by = 0.001)
sens <- lapply(threshVal, function(x) idError(doloDist, doloSpp, thresh = x))
sensMat <- do.call(rbind, sens)
barplot(t(sensMat)[3:4,], names.arg=sensMat[,1])

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
