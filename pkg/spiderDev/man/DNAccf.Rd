\name{DNAccf}
\alias{DNAccf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Cross-correlation of DNA sequences}

\description{Cross-correlation between sequences in an alignment to detect potentially incorrectly aligned sequences.}

\usage{
DNAccf(DNAbin, randomRefSeq = FALSE, lag.max = NULL)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
	\item{DNAbin}{A distance matrix.}
	\item{refSeq}{Numeric. The sequence that should be used as a reference. Default of 1, i.e. the first sequence. The option \code{"random"} can be given, which randomly selects a sequence.}
	\item{lag.max}{Numeric. The maximum lag at which to calculate the correlation between sequences. Default is 10*log10(N/m)where N is the number of observations and m the number of series (see \code{\link{ccf}}).}
}

\details{
This function can be used to detect incorrect alignment within a set of sequences.

By default, the function uses the first sequence as the reference for each subsequent sequence. When \code{"random"} is selected, the reference can usually be detected by having a correlation of 1.
}

\value{
Returns a list  with the following elements:
\item{cor}{Maximum correlation between the sequence and the reference.}
\item{lag}{Numeric vector giving the lag at which the correlation is a maximum.}

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

data(dolomedes)
DNAccf(dolomedes)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
