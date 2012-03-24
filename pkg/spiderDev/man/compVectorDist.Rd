\name{compVectorDist}
\alias{compVectorDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate composition vector distance
}
\description{
Returns all possible permutations of DNA sequences of a given length.
}

\usage{
compVectorDist(DNAbin, kval = 6, subBackground = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{An object of class 'DNAbin'.}
  \item{kval}{Numeric. Length of the desired K-strings.Default of 6.}
  \item{subBackground}{Logical. Should the background of random mutations be subtracted? Default of FALSE.}
}
\details{
\code{subBackground = TRUE} results in a larger distance between specimens, but increases the processor time substantially.

Processor time increases exponentially as \code{kval} increases. The function takes approximately 16 seconds with the \code{dolomedes} dataset and with \code{kval = 6}. Errors are given when \code{kval} is less than 3.
}
\value{
A matrix giving the composition vector distance between the sequences in the alignment. 
}
\references{
Qi J, Wang B, Hao B-I. 2004. Whole proteome prokaryote phylogeny without sequence alignment: A K-string composition approach. Journal of Molecular Ecology 58:1--11

}
\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{permDNA}}
}
\examples{
data(dolomedes)

compVectorDist(dolomedes)

compVectorDist(dolomedes, kval = 5)

compVectorDist(dolomedes, kval = 5, subBackground = TRUE)

}
