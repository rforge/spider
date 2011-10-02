\name{meiersBestMatch}
\alias{meiersBestMatch}
\alias{nearNeighbour}
\alias{idBOLD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Measures of identification accuracy}

\description{}

\usage{
meiersBestMatch(distobj, sppVector, threshold = 0.01)
nearNeighbour(distobj, sppVector, names = FALSE)
idBOLD(distobj, sppVector, threshold = 0.01, highThreshold = 0.05)}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{distobj}{A distance object (usually from dist.dna()).}
  \item{sppVector}{Vector of species names. (see \code{\link{sppVector}})}
  \item{threshold}{Distance cutoff for identifications. Default of 0.01 (1\%)}
  \item{names}{Logical. Should the names of the nearest match be shown? Default of FALSE}
  \item{highThreshold}{Distance cutoff for identifications. Default of 0.05 (5\%)}
}

\details{
\code{'meiersBestMatch'} conducts the 

\code{'nearNeighbour'} finds

}

\value{
A character vector giving the identification status of each individual. 
	\item{"correct"}{The name of the closest match is the same}
	\item{"incorrect"}{The name of the closest match is different}
	\item{"ambiguous"}{More than one species is the closest match}
	\item{"no id"}{No species are within the threshold distance}

'nearNeighbour' returns the name for the nearest individual.
}

\references{
Meier, R., Shiyang, K., Vaidya, G., \& Ng, P. (2006). DNA barcoding and taxonomy in Diptera: a tale of high intraspecific variability and low identification success. _Systematic Biology_, *55* (5), 715-728.

}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{dist.dna}}, 
\code{\link{sppVector}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(anoteropsis)
anoDist <- dist.dna(anoteropsis)
anoSpp <- sapply(strsplit(names(anoteropsis), split="_"), function(x) paste(x[1], x[2], sep="_"))

meiersBestMatch(anoDist, anoSpp)
meiersBestMatch(anoDist, anoSpp, threshold=0.005)
nearNeighbour(anoDist, anoSpp)
idBOLD(anoDist, anoSpp)
idBOLD(anoDist, anoSpp, threshold=0.003, highThreshold=0.1)

data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(names(dolomedes), 1, 5)

meiersBestMatch(doloDist, doloSpp)
meiersBestMatch(doloDist, doloSpp, threshold=0.005)
nearNeighbour(doloDist, doloSpp)
idBOLD(doloDist, doloSpp)
idBOLD(doloDist, doloSpp, threshold=0.003, highThreshold=0.1)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
