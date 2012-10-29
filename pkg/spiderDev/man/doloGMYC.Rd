\name{doloGMYC}
\docType{data}
\alias{doloGMYC}
\alias{doloMultGMYC}
\title{GMYC results from New Zealand _Dolomedes_ species}

\description{Results of the generalised mixed yule coalescent model (GMYC) on the dataset provided by \code{data(dolomedes)}. They were derived as shown in the example below.}

\usage{
doloGMYC
doloMultGMYC
}

\format{Objects of class `gmyc'. \code{doloGMYC} is a single-threshold model, while \code{doloMultGMYC} is a multiple-threshold model.

These objects are created using the \code{gmyc} function from the \code{splits} package, as shown below.}

\source{
Vink, C. J., and Duperre, N. (2010). Pisauridae (Arachnida: Araneae). _Fauna of New Zealand_ *64* 1-54.
}

\examples{
\dontrun{
install.packages("splits", repos = "http://r-forge.r-project.org")

data(dolomedes)
doloTr <- nj(dist.dna(dolomedes))
doloTr <- root(doloTr, node = 43, resolve.root = TRUE)
doloTr2$edge.length[doloTr2$edge.length <= 0] <- 0.00002
doloUTr <- chronopl(doloTr, lambda = 1.6)
#doloGMYC
gmyc(doloUTr)
#doloMultGMYC
gmyc(doloUTr, method = "multiple")

}
}

\keyword{Datasets}

