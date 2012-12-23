\name{baseContent}
\alias{baseContent}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Base composition analysis of an alignment}

\description{Base composition analysis of an alignment.}

\usage{
baseContent(DNAbin)
}

\arguments{
	\item{DNAbin}{An object of class \code{DNAbin}}
}

\details{
}

\value{
Returns a numeric vector of the log probability of the base composition of the query sequence, based on the global base composition of all other sequences in the alignment.

}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{dmultinom}}
}

\examples{

data(carpophilus)
baseContent(carpoCOI)
plot(baseContent(carpoCOI))
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
	