\name{nearNeighbour}
\alias{bestCloseMatch}
\alias{nearNeighbour}
\alias{idBOLD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Measures of identification accuracy}

\description{Tests of barcoding efficacy using distance-based methods.}

\usage{
bestCloseMatch(distobj, sppVector, threshold = 0.01)
nearNeighbour(distobj, sppVector, names = FALSE)
idBOLD(distobj, sppVector, threshold = 0.01)}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{distobj}{A distance object (usually from \code{\link{dist.dna}}).}
  \item{sppVector}{Vector of species names. See \code{\link{sppVector}}.}
  \item{threshold}{Distance cutoff for identifications. Default of 0.01 (1\%).}
  \item{names}{Logical. Should the names of the nearest match be shown? Default of FALSE.}
}

\details{
\code{bestCloseMatch} conducts the "best close match" analysis of Meier et al. (2006). When the threshold is large, this analysis will return essentially the same result as \code{nearNeighbour}.

\code{nearNeighbour} finds the closest individual and returns if their names are the same (TRUE) or different (FALSE). If \code{names = TRUE}, the name of the closest individual is returned. Ties are decided by majority rule.

\code{idBOLD} conducts a threshold-based analysis, similar to that conducted by the "Identify Specimen" tool provided by the Barcode of Life Database (\code{http://www.boldsystems.org/views/idrequest.php}).
}

\value{
\code{bestCloseMatch} and \code{idBOLD} return a character vector giving the identification status of each individual. 
	\item{"correct"}{The name of the closest match is the same}
	\item{"incorrect"}{The name of the closest match is different}
	\item{"ambiguous"}{More than one species is the closest match (\code{bestCloseMatch}), or is within the given threshold (\code{idBOLD})}
	\item{"no id"}{No species are within the threshold distance}

\code{nearNeighbour} returns a logical vector or (if \code{names = TRUE}) the name for the nearest individual.
}

\references{
Meier, R., Shiyang, K., Vaidya, G., & Ng, P. (2006). DNA barcoding and taxonomy in Diptera: a tale of high intraspecific variability and low identification success. _Systematic Biology_
*55* (5) 715-728.

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
anoSpp <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"), function(x) paste(x[1], x[2], sep="_"))

bestCloseMatch(anoDist, anoSpp)
bestCloseMatch(anoDist, anoSpp, threshold=0.005)
nearNeighbour(anoDist, anoSpp)
idBOLD(anoDist, anoSpp)
idBOLD(anoDist, anoSpp, threshold=0.003)

data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

bestCloseMatch(doloDist, doloSpp)
bestCloseMatch(doloDist, doloSpp, threshold=0.005)
nearNeighbour(doloDist, doloSpp)
idBOLD(doloDist, doloSpp)
idBOLD(doloDist, doloSpp, threshold=0.003)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}