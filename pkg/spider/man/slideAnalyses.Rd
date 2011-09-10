\name{slideAnalyses}
\alias{slideAnalyses}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sliding window analyses
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
slideAnalyses(dat, width, spp, interval = 1, distMeasures = TRUE, thresA = 0.2, thresB = 0.1, treeMeasures = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
A DNA alignment of class `DNAbin'
}
  \item{width}{
Desired width of windows in number of base pairs
}
  \item{spp}{
Species vector (see \code{\link{sppVector}})
}
  \item{interval}{
Distance between each window in number of base pairs. Default of 1. Giving the option of 'codons' sets the size to 3.
}
  \item{distMeasures}{
Logical. Should distance measures be calculated? Default of TRUE
}
  \item{thresA}{
Threshold to calculate the number of distance above. Default of 0.2
}
  \item{thresB}{
Threshold to calculate the number of distance below. Default of 0.1
}
  \item{treeMeasures}{
Logical. Should tree-based measures be calculated? Default of FALSE
}
}
\details{
Distance measures include the following:
\item{proportion of zero non-conspecific distances}
\item{number of distances that are above and below the thresholds given}
\item{number of zero-length distances}
\item{overall mean distance}

Tree-based measures include the following: 
\item{proportion of species that are monophyletic,}
\item{proportion of clades that are identical between the NJ tree calculated for the window and the tree calculated for the full dataset,}
\item{the above with \code{method="shallow"}.}

Tree-based measures are a lot more time-intensive than distance measures. When dealing with lots of taxa and short window sizes, this part of the function can take hours.

}
\value{
An object of class 'slidWin' which is a list containing the following elements:
\item{win_mono_out}{Proportion of species that are monophyletic}
\item{comp_out}{Proportion of clades that are identical between the NJ tree calculated for the window and the tree calculated for the full dataset}
\item{comp_depth_out}{Proportion of shallow clades that are identical}
\item{pos_tr_out}{Index of window position for tree-based analyses}
\item{noncon_out}{proportion of zero non-conspecific distances}
\item{thres_below_out}{number of distances that are below the threshold given}
\item{thres_above_out}{number of distances that are above the threshold given}
\item{zero_out}{number of zero-length distances}
\item{dist_mean_out}{overall mean distance}
\item{pos_out}{Index of window position}
\item{dat_zero_out}{Number of zero inter-specific distances in the full dataset}
\item{boxplot_out}{Always FALSE. Required for \code{plot.slidwin}}
\item{distMeasures}{Value of argument. Required for \code{plot.slidwin}}
\item{thresA}{Value of argument. Required for \code{plot.slidwin}}
\item{thresB}{Value of argument. Required for \code{plot.slidwin}}
\item{treeMeasures}{Value of argument. Required for \code{plot.slidwin}}

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
\code{\link{plot.slidWin}}, \code{\link{rankSlidWin}}
}
\examples{
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(names(dolomedes), 1, 5)

slideAnalyses(dolomedes, 200, interval=10, doloSpp, treeMeasures=TRUE)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Sliding window}
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
