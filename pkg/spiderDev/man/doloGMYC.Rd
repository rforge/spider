\name{doloGMYC}
\docType{data}
\alias{doloGMYC}
\alias{doloMultGMYC}
\title{Cytochrome oxidase I (COI) sequences of New Zealand _Anoteropsis_ species}

\description{GMYC objects from the dataset provided by \code{data(dolomedes)}. They were derived as shown in the example below.}

\usage{
doloGMYC
doloMultGMYC
}

\format{Objects of class `gmyc'. \code{doloGMYC} is a single-threshold model, while \code{doloMultGMYC} is a multiple-threshold model.}

\source{
Vink, C. J., and Paterson, A. M. (2003). Combined molecular and morphological phylogenetic analyses of the New Zealand wolf spider genus _Anoteropsis_
(Araneae: Lycosidae). _Molecular Phylogenetics and Evolution_ *28* 576-587.
}

\examples{
\dontrun{
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

