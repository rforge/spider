\name{slidingWindow}
\alias{slidingWindow}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create Sliding Windows along an alignment
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
slidingWindow(align, width, interval = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{align}{
%%     ~~Describe \code{align} here~~
}
  \item{width}{
%%     ~~Describe \code{width} here~~
}
  \item{interval}{
%%     ~~Describe \code{interval} here~~
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
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(align, width, interval = 1){
	annote <- function(x){
		y <- align[ , x:(x+width)]
		attr(y, "window") <- c(x, x+width)
		y
	}
	if(interval == "codons") interval <- 3
	align <- as.matrix(align)
	len <- dim(align)[[2]]
	iter <- seq(1, len-width, by = interval)
	li <- lapply(iter, function(x) annote(x))
	li
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
