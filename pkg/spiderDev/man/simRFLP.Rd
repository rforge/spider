\name{simRFLP}
\alias{simRFLP}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simulation of Restriction Fragment Length Polymorphism analysis}

\description{Simulates a Restriction Fragment Length Polymorphism (RFLP) analysis of given DNA sequences.}

\usage{
simRFLP(DNAbin, enzyme)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
	\item{DNAbin}{A 'DNAbin' object.}
	\item{enzyme}{Character vector giving the name of the enzyme(s) to simulate fragmentation.}
}

\details{
RFLP uses restriction enzymes to digest amplified DNA, cutting them into different lengths depending on the frequency of the enzyme's recognition sequence in the given sequence. When run on an agarose gel, the different length sequences can provide an easy way to differentiate between species and populations.

This function simulates the fragmentation of known DNA sequences, resulting in a vector of the length of resulting fragments for each sequence. The resulting object can be plotted to provide a pictoral impression of what the agarose gel for those sequences will look like.
}

\value{
A list of class 'simRFLP'. Length of the list corresponds to the number of sequences in the given 'DNAbin', each element being a numeric vector giving the length (in basepairs) of the resulting fragments.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{enzymes}}, \code{\link{plot.simRFLP}}
}

\examples{
data(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

doloRFLP <- simRFLP(dolomedes, "Alu1")
doloRFLP
plot(doloRFLP)
plot(doloRFLP, sppVector = doloSpp, linewex = 0.1)

doloRFLP2 <- simRFLP(dolomedes, c("Alu1", "EcoRII"))
doloRFLP2
plot(doloRFLP2)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{RFLP}
