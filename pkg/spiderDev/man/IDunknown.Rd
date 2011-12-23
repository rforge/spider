\name{IDunknown}
\alias{IDunknown}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Identifies unknown sequences by comparison against a local library}

\description{Identification of unknown sequences by comparison against a local library of sequences of known identity.}

\usage{
IDunknown(unknown, known)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{unknown}{A `DNAbin' object containing unknown sequences.}
  \item{known}{A `DNAbin' object containing the library of known sequences.}
}

\details{
This function is in VERY early stages of development. So early in fact, that it doesn't do anything at this stage.

This function requires that the unknown sequences are correctly aligned with respect to the local library. For a function that can be used without alignment, see .......... (function not made yet).
}

\value{
A vector with the species index of the identification.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
For more information on some of the different matching criteria see: \code{\link{nearNeighbour}},  \code{\link{monophyly}}
}

\examples{

data(dolomedes)

#Simulate a dataset of unknown specimens
set.seed(12354)
unknown <- dolomedes[sample(1:33, 5), ]
attr(unknown, "dimnames")[[1]] <- paste("unkow", 1:5, sep="")


IDunknown(unknown, dolomedes)


}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
