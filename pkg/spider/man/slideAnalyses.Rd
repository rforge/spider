\name{slideAnalyses}
\alias{slideAnalyses}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sliding window analyses
}
\description{
Wraps a number of measures used in sliding window analyses into one easy-to-use function.
}
\usage{
slideAnalyses(DNAbin, sppVector, width, interval = 1, distMeasures = TRUE, treeMeasures = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{
A DNA alignment of class `DNAbin'
}
  \item{sppVector}{
Species vector (see \code{\link{sppVector}})
}
  \item{width}{
Desired width of windows in number of base pairs
}
  \item{interval}{
Distance between each window in number of base pairs. Default of 1. Giving the option of 'codons' sets the size to 3.
}
  \item{distMeasures}{
Logical. Should distance measures be calculated? Default of TRUE
}
  \item{treeMeasures}{
Logical. Should tree-based measures be calculated? Default of FALSE
}
}

\details{
Distance measures include the following:
proportion of zero non-conspecific distances,
number of diagnostic nucleotides,
number of zero-length distances,
 and overall mean distance.

Tree-based measures include the following: 
proportion of species that are monophyletic,
proportion of clades that are identical between the NJ tree calculated for the window and the tree calculated for the full dataset,
 and the above with \code{method="shallow"}.

Tree-based measures are a lot more time-intensive than distance measures. When dealing with lots of taxa and short window sizes, this part of the function can take hours.
}

\value{
An object of class 'slidWin' which is a list containing the following elements:
\item{win_mono_out}{Proportion of species that are monophyletic}
\item{comp_out}{Proportion of clades that are identical between the NJ tree calculated for the window and the tree calculated for the full dataset}
\item{comp_depth_out}{Proportion of shallow clades that are identical}
\item{pos_tr_out}{Index of window position for tree-based analyses}
\item{noncon_out}{Proportion of zero non-conspecific distances}
\item{nd_out}{The sum of diagnostic nucleotides for each species}
\item{zero_out}{The number of zero-length distances}
\item{dist_mean_out}{Overall mean distance}
\item{pos_out}{Index of window position}
\item{dat_zero_out}{Number of zero inter-specific distances in the full dataset}
\item{boxplot_out}{Always FALSE. Required for \code{plot.slidwin}}
\item{distMeasures}{Value of argument. Required for \code{plot.slidwin}}
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
\code{\link{plot.slidWin}}, \code{\link{rankSlidWin}}, \code{\link{slideNucDiag}}
}
\examples{
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

slideAnalyses(dolomedes, doloSpp, 200, interval=10, treeMeasures=TRUE)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Sliding window}
