\name{best2nullLRT}
\alias{best2nullLRT}
\alias{sing2multLRT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate likelihood ratio tests on GMYC objects}

\description{Calculation of likelihood ratio tests on GMYC objects. Includes comparing the best model with the null, and comparing single-threshold and multiple-threshold models.}

\usage{
best2nullLRT(gmyc)
sing2multLRT(test1, test2)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gmyc}{A `gmyc' object created with \code{\link{gmyc}}.}
  \item{test1}{A `gmyc' object created with \code{\link{gmyc}}.}
  \item{test2}{A `gmyc' object created with \code{\link{gmyc}}.}
}

\details{
\code{best2null} compares the best model with the null model.

\code{sing2multLRT} compares a multiple-threshold model with a single-threshold model. It is a re-implementation of \code{\link{compare}} in the \code{splits} package, to facilitate the use of data in downstream applications.
}

\value{
A list with the following elements:
\item{chi.sq}{2 times the difference between the likelihoods}
\item{df}{Degrees of freedom}
\item{probability}{Probability based on a chi-square distribution}
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{gmyc}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(doloGMYC)
data(doloMultGMYC)

best2nullLRT(doloGMYC)

sing2multLRT(doloGMYC, doloMultGMYC)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{GMYC}
