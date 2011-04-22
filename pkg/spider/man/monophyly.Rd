\name{monophyly}
\alias{monophyly}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Species monophyly over a tree
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
monophyly(phy, pp = NA, singletonsMono = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{
%%     ~~Describe \code{phy} here~~
}
  \item{pp}{
%%     ~~Describe \code{pp} here~~
}
  \item{singletonsMono}{
%%     ~~Describe \code{singletonsMono} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
tr <- rtree(15)
spp <- rep(LETTERS[1:5], rep(3,5))
tr$tip.label <- spp
monophyly(tr)

tr2 <- tr
spp2 <- c(rep(LETTERS[1:4], rep(3,4)), LETTERS[5:7])
tr2$tip.label <- spp2
monophyly(tr2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
