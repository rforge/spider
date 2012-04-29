\name{clustGMYC}
\alias{clustGMYC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create a species vector from a GMYC object}

\description{These functions return a number of the key statistics required when dealing with GMYC objects.}

\usage{
clustGMYC(gmyc, index = "maxLikelihood")
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gmyc}{A `gmyc' object created with \code{gmyc}.}
  \item{index}{The GMYC model to create the species vector. Default of the maximum likelihood model.}
}

\details{
}

\value{
A character vector with each GMYC entity given by a different two-letter combination.
}

\references{
}


\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{gmyc}, \code{\link{sppVector}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(doloGMYC)

clustGMYC(doloGMYC)

clustGMYC(doloGMYC, index = 10)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{GMYC}
