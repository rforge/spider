\name{rosenberg}
\alias{rosenberg}

\title{Rosenberg's probability of reciprocal monophyly}

\description{This function computes the Rosenberg's probability of reciprocal monophyly for each dichotomous node of a phylogenetic tree.}

\usage{rosenberg(phy)}

\arguments{
  \item{phy}{an object of class '"phylo"'.}
}

\details{

}

\value{
A numeric vector corresponding to the node labels of 'phy'.
}

\references{
Rosenberg, N. A. (2007). Statistical tests for taxonomic distinctiveness from observations of monophyly. _Evolution_, *61* (2), 317-323.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
	data(anoteropsis)
	anoTr <- nj(dist.dna(anoteropsis))
	anoLab <- rosenberg(anoTr)
	plot(anoTr)
	nodelabels(round(anoLab,3))
	
	data(dolomedes)
	doloTr <- nj(dist.dna(dolomedes))
	doloLab <- rosenberg(doloTr)
	plot(doloTr)
	nodelabels(round(doloLab, 3))
}

\keyword{Sampling}