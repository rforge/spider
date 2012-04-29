\name{clustCI.gmyc}
\alias{clustCI.gmyc}
\alias{maxLike.gmyc}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate GMYC statistics}

\description{These functions return a number of the key statistics required when dealing with GMYC objects.}

\usage{
clustCI.gmyc(gmyc)
maxLike.gmyc(gmyc)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gmyc}{A `gmyc' object created with \code{gmyc}.}
}

\details{
\code{clustCI.gmyc} returns the number of GMYC entities within the confidence interval of 2 likelihood units from the maximum. 

\code{maxLike.gmyc} returns the maximum likelihood value.
}

\value{
Numeric vectors giving the statistics for each function as detailed above.
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
\code{gmyc}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(doloGMYC)

clustCI.gmyc(doloGMYC)
maxLike.gmyc(doloGMYC)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{GMYC}
