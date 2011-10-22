\name{rankSlidWin}
\alias{rankSlidWin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Rank a 'slidWin' object
}
\description{
Display the top windows measured by \code{\link{slideAnalyses}}
}
\usage{
rankSlidWin(slidWin, criteria="all", num = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slidWin}{
An object of class `slidWin', made using \code{\link{slideAnalyses}}
}
  \item{criteria}{
Name of criteria to sort by. Can be any of the following: \code{"position", "mean_distance", "monophyly", "clade_comparison", "clade_comp_shallow", "zero_noncon", "zero_distances", "diag_nuc"} or \code{"all"}. Default of \code{"all"}
}
  \item{num}{
Number of windows to return. Default of 10. 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A data frame giving the values of the measures calculated by \code{\link{slideAnalyses}}, ranked to show the top 10 positions based on the criterion given.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{slideAnalyses}}
}
\examples{
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

doloSlide <- slideAnalyses(dolomedes, doloSpp, 200, interval=10, treeMeasures=TRUE)

rankSlidWin(doloSlide)
rankSlidWin(doloSlide, criteria="zero_distances")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Sliding window}
