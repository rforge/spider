\name{blockAlignment}
\alias{blockAlignment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make all sequences the same length}

\description{Coerces all sequences in a DNAbin object to the same length.}

\usage{
blockAlignment(DNAbin, mode = "shortest", range = NULL)
}

\arguments{
	\item{DNAbin}{An object of class \code{DNAbin}}
	\item{mode}{Character vector. Options of "shortest" or "longest"}
	\item{range}{Numeric vector of length 2. Index of the bases where the }
}

\details{
When \code{mode = "shortest"}, the alignment is truncated at the length of the shortest sequence. When \code{mode = "longest"}, the alignment is extended to the end of the longest sequence, with shorter sequences filled in with "N"s.
}

\value{
A DNAbin object in matrix format.

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

data(salticidae)
salticidae
blockAlignment(salticidae)
blockAlignment(salticidae, mode = "longest")
blockAlignment(salticidae, mode = NULL, range = c(200, 600))

image(blockAlignment(salticidae))
image(blockAlignment(salticidae, mode = "longest"))
image(blockAlignment(salticidae, mode = NULL, range = c(200, 600)))
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Data Quality Protocol}
	