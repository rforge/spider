\name{sppVector}
\alias{sppVector}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Species Vectors
}
\description{
A vector that gives an identity to the individuals in various analyses
}
\details{
Species vectors are the key concept behind a lot of \code{spider}'s functionality. They are the method used to differentiate data from multiple species. It is important to note that "species" in this context can mean any cluster (real or otherwise) that is of interest. Populations, demes, subspecies and genera could be the taxa segregated by "species vectors".

The two characteristics of a species vector are UNIQUENESS between species and CONSISTENCY within them. R recognises differences of a single character between elements, leading to \code{spider} considering these elements to represent different species.

There is an easy way and a hard way to create species vectors. The hard way is to type out each element in the vector, making sure no typos or alignment errors are made.

The easy way is to add species designations into your data matrix from the beginning in such a way that it is easy to use R's data manipulation tools to create a species vector from the names of your data. See the examples for some ways to do this.
}

\references{
%% ~put references to the literature/web site here ~
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link[base:strsplit]{strsplit}}, \code{\link[base:substr]{substr}}, \code{\link[base:sapply]{sapply}}
}

\examples{
data(dolomedes)
#Dolomedes species vector
doloSpp <- substr(names(dolomedes), 1, 5)

data(anoteropsis)
#Anoteropsis species vector
anoSpp <- sapply(strsplit(names(anoteropsis), split="_"), function(x) paste(x[1], x[2], sep="_"))


}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

