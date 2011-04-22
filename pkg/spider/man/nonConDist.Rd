\name{nonConDist}
\alias{nonConDist}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nearest non-conspecific distance
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
nonConDist(dat, propZero = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
}
  \item{propZero}{
%%     ~~Describe \code{propZero} here~~
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
function(dat, propZero = FALSE){
	dat <- as.matrix(dat)
	nonSpecDists <- list()
	for(i in 1:length(dimnames(dat)[[1]])){
	  nonSpec <- dimnames(dat)[[1]] != dimnames(dat)[[1]][i]
	  nonSpecDists[[i]] <- min(dat[nonSpec,i])
	}	
if(propZero) output <- length(which(unlist(nonSpecDists) == 0))/length(unlist(nonSpecDists)) else output <- unlist(nonSpecDists)

output
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
