\name{nucDiag}
\alias{nucDiag}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nucleotide diagnostics for species alignments
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nucDiag(DNAbin, sppVec)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{
An object of class 'DNAbin'.
}
  \item{sppVec}{
The species vector (see \code{\link{sppVector}}).
}
}
\details{

}
\value{
A list giving the pure, private diagnostic nucleotides for each of the species represented in the species vector.
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(anoteropsis)
anoSpp <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"), function(x) paste(x[1], x[2], sep="_"))

nucDiag(anoteropsis, anoSpp)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
