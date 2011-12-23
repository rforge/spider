\name{AIC.gmyc}
\alias{AIC.gmyc}
\alias{AICweights}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate AIC values for GMYC objects}

\description{This function calculates AIC values, weights and model-weighted average number of entities inferred using GMYC.}

\usage{
AIC.gmyc(gmyc)
AICweights(AIC)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{gmyc}{A `gmyc' object created with \code{\link{gmyc}}.}
  \item{AIC}{A vector of AIC values for which weights are to be calculated.}
}

\details{
\code{AIC.gmyc} implements equations 3 to 6 in Powell (2011). 

\code{AICweights} is a generic function that calculates the weights for a given vector of AIC values.
}

\value{
A list with the following elements:
\item{AIC}{Numeric vector of AIC values.}
\item{delta}{Numeric vector of the difference between each value and the minimum (best) AIC value.}
\item{weight}{Numeric vector of AIC weights.}
\item{mean_ent}{Model-averaged number of entities.}
\item{var_ent}{Model-averaged number of entities.}

\code{AICweights} does not return \code{mean_ent} or \code{var_ent}
}

\references{
Powell, J. R. (2011). Accounting for uncertainty in species delineation during the analysis of environmental DNA sequence data. _Methods in Ecology and Evolution_.
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

AIC.gmyc(doloGMYC)
AIC.gmyc(doloMultGMYC)

comb <- c(AIC.gmyc(doloGMYC)$AIC, AIC.gmyc(doloMultGMYC)$AIC)
AICweights(comb)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{GMYC}
