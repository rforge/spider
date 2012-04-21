\name{enzymes}
\docType{data}
\alias{enzymes}
\title{Data frame of restriction endonuclease enzyme names and cutting regions}

\description{GMYC objects from the dataset provided by \code{data(dolomedes)}. They were derived as shown in the example below.}

\usage{
enzymes
}

\format{Dataframe with two columns. \code{enzymes$name} giving the name of the enzymes, \code{enzymes$cutPattern} giving the recognition site of each enzyme.}

\source{
Various sources including:

}

\examples{
data(enzymes)

#Names of enzymes in data frame
unique(enzymes$name)
}

\keyword{Datasets}
\keyword{RFLP}

