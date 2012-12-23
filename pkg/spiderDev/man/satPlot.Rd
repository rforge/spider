\name{satPlot}
\alias{satPlot}
\alias{satPlot2}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Saturation plots}

\description{Two methods for creating plots to guage the amount of sequence saturation within an alignment.}

\usage{
satPlot(DNAbin)

satPlot2(DNAbin)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
	\item{DNAbin}{An object of class \code{DNAbin}}
}

\details{
\code{satPlot} compares the uncorrected p-distance matrix with a model-corrected distance based on an arbitrary model. In the current implementation, the model-corrected distances are based on a NJ-tree with branch lengths (but not topology) optimised under an HKY + I  + G model.

\code{satPlot2} merely plots the uncorrected p-distances and indicates the 10\% mark, above which point distances tend to require model-correction.
}

\value{
Both functions create a saturation plot. In addition, \code{satPlot} also invisibly returns a list with the following elements:
\item{Pdist}{The pairwise uncorrected p-distance matrix.}
\item{MLdist}{The pairwise uncorrect p-distance matrix.}
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\references{
Collins, R. A., Boykin, L. M., Cruickshank, R. H., \& Armstrong, K. F.
(2012). Barcoding's next top model: an evaluation of nucleotide
substitution models for specimen identification. _Methods in Ecology and Evolution_, *3* , 457-465.

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{pml}}, \code{\link{cophenetic}}
}

\examples{

data(carpophilus)

satPlot(carpoCOI)
satPlot(carpo28S)
satPlot(carpoITS)

satPlot2(carpoCOI)
satPlot2(carpo28S)
satPlot2(carpoITS)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
