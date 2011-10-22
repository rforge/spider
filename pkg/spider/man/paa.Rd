\name{paa}
\alias{paa}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Population Aggregate Analysis}

\description{
Conducts population aggregate analysis over a matrix of characters of interest.
}

\usage{paa(data, sppVector)}
%- maybe also 'usage' for other objects documented here.

\arguments{
  \item{data}{A data matrix with columns as characters  and rows as individual}
  \item{sppVector}{The species vector. See \code{\link{sppVector}}}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{A matrix with populations as rows and characters as columns. Cells give the character state of each population if fixed, or "poly" if the character is polymorphic.}

\references{
%% ~put references to the literature/web site here ~
}

\author{Samuel Brown <s_d_j_brown@hotmail.com>}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
u <- sample(c(0,1), 16, replace=TRUE)
v <- rep(c(0,1), rep(8,2))
x <- rep(c(1,0), rep(8,2))
y <- sample(c(0,1), 16, replace=TRUE)
z <- rep(c(1,0), rep(8,2))

dat <- cbind(u,v,x,y,z)
popn <- rep(c("A","B", "C", "D"), rep(4,4))

paa(dat, popn)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Morphology}
