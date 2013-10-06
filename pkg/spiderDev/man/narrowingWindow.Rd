\name{narrowingWindow}
\alias{narrowingWindow}
\alias{narrowingWindow2}
\alias{giveMeThePicture}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{Make all sequences the same length}

\description{Coerces all sequences in a DNAbin object to the same length.}

\usage{
narrowingWindow(DNAbin, interval = 10)
narrowingWindow2(DNAbin, interval = 1, direction = "left")
giveMeThePicture(DNAbin)
}

\arguments{
	\item{DNAbin}{An object of class \code{DNAbin}}
	\item{interval}{Numeric. Size of steps by which the alignment should be trimmed.}
	\item{direction}{Character vector. Options of "left", "right" or "both"}
}

\details{
When \code{mode = "shortest"}, the alignment is truncated at the length of the shortest sequence. When \code{mode = "longest"}, the alignment is extended to the end of the longest sequence, with shorter sequences filled in with "N"s.
}

\value{
\code{narrowingWindow} and \code{narrowingWindow2} return lists of DNAbin objects. 

\code{giveMeThePicture} returns a picture of the GC content as the alignment is trimmed.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{

}

\examples{

data(dolomedes)
narrowingWindow(dolomedes)
narrowingWindow2(dolomedes)
giveMeThePicture(dolomedes)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
	