\name{exCon}
\alias{exCon}
\alias{inCon}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Evaluation of sequence contamination}

\description{Functions for highlighting sequences that may represent external (\code{exCon}) or internal contamination (\code{inCon}).}

\usage{
exCon(DNAbin, outlierLabels = "index")

inCon(DNAbin)

}

%- maybe also 'usage' for other objects documented here.
\arguments{
	\item{DNAbin}{An object of class \code{DNAbin}}
	\item{outlierLabels}{The format of displaying the labels of the outlying sequences. Three options are implemented: \code{index} (the default) shows the number of the outlying sequence. \code{name} shows the name of the sequence. \code{none} suppresses labelling.}
}

\details{
\code{exCon} calculates the mean distances between sequences in the alignment, systematically leaving removing a single sequence.

\code{inCon} creates a binary distance matrix that 
}

\value{
\code{exCon} plots the mean distance and 95\% limits, and returns a list with the following elements:
\item{means}{Mean distance of each of the jacknifed alignments.}
\item{highCI}{Upper 95\% limit.}
\item{lowCI}{Lower 95\% limit.}
\item{above}{Index of sequences above the upper limit.}
\item{below}{Index of sequences below the lower limit.}

\code{inCon} returns a binary matrix with 0 indicating identical sequences. 

}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{ccf}}
}

\examples{

data(carpophilus)
exCon(carpoCOI)


inCon(carpoITS)

#A method of visualising the results
image(inCon(carpoITS))

carpoITSsspp <- sapply(strsplit(dimnames(carpoITS)[[1]], split = "\\\\|"), function(xx) xx[2])
carpoITSspp <- substr(carpoITSsspp, 1,  8)

heatmapSpp(inCon(carpoITS), carpoITSsspp)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
