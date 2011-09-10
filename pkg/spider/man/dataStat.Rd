\name{dataStat}
\alias{dataStat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Taxa statistics
}
\description{
Returns the numbers of species, genera and individuals in the dataset.
}
\usage{
seqStat(spp, gen, thresh)
}

\arguments{
  \item{spp}{
Species vector (see \code{\link{sppVector}}).
}

\item{spp}{
Genus vector that defines the genera of each individual
}

  \item{thresh}{
Threshold for adequate individual/species number. Default of 5.
}
}

\details{

}

\value{
A table giving the number of genera and species in the dataset; giving the minimum, maximum, mean and median number of individuals per species, and the number of species below the given threshold.
}
\references{
%% ~put references to the literature/web site here ~
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
sppName <- sapply(strsplit(names(anoteropsis), split="_"), function(x) paste(x[1], x[2], sep="_"))
genName <-  sapply(strsplit(sppName, split="_"), function(x) x[1])
dataStat(sppName, genName)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
