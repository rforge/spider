\name{tajima.K}
\alias{tajima.K}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate Tajima's K index of divergence
}
\description{
Calculates Tajima's K index of divergence.
}
\usage{
tajima.K(DNAbin, prop = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{
An object of class `DNAbin'.
}
  \item{prop}{
Logical. Should the function report the proportion of diversity across the whole sequence? Default of TRUE
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A distance matrix
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Samuel Brown	<s_d_j_brown@hotmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{dist.dna}}
}

\examples{
data(anoteropsis)
tajima.K(anoteropsis)
}

\keyword{Utilities}
