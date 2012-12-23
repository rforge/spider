\name{seeSegSites}
\alias{seeSegSites}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Visualise the informative sites of an alignment}

\description{This function visualises illustrative barcode consisting of vertical bands in four colours corresponding to the DNA bases adenine (A), cytosine (C), guanine  (G) and thiamine (T).}

\usage{seeSegSites(DNAbin, col = c("#C8CAD8", "#023FA5"))}


%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{An alignment \code{DNAbin}.}
  \item{col}{A character vector of length 2 giving colours to represent invariant and variable sites.}
}

\details{
}

\value{
Plots an visualisation of the informative sites in an alignment.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\seealso{
\code{\link{seeBarcode}}
}

\examples{
data(carpophilus)

layout(matrix(c(1:2), ncol = 1))
seeSegSites(carpoCOI)
seeSegSites(carpoITS)

seeSegSites(carpoCOI, col = c("red", "orange"))
seeSegSites(carpoITS, col = c("red", "orange"))

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
\keyword{Utilities}
