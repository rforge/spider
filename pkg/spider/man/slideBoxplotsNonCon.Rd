\name{slideBoxplotsNonCon}
\alias{slideBoxplotsNonCon}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Boxplots across windows with nearest non-conspecific distances
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
slideBoxplotsNonCon(dat, width, spp, interval = 1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
}
  \item{width}{
%%     ~~Describe \code{width} here~~
}
  \item{spp}{
%%     ~~Describe \code{spp} here~~
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
function(dat, width, spp, interval = 1){
	#Produce distance matrix, number of zero cells of full sequence
	boxplot_out <- TRUE
	dat <- as.matrix(dat)
	dimnames(dat)[[1]] <- spp
	datd <- dist.dna(dat, pairwise.deletion = TRUE)
	#Create the windows
	win <- slidingWindow(dat, width-1, interval = interval)
	pos_out <- sapply(win, function(x) attr(x, "window")[1])
	win_dist <- lapply(win, function(x) dist.dna(x, pairwise.deletion = TRUE))
	
	#Boxplots of intra- and inter-specific distances
	spp_dist <- lapply(win_dist, function(x) sppDist(x, spp))
	bp_IntraSpp_out <- lapply(spp_dist, function(x) boxplot(x$intra, plot=FALSE))
	spp_nonCon <- lapply(win_dist, nonConDist)
	bp_InterSpp_out <- lapply(spp_nonCon, function(x) boxplot(x, plot=FALSE))
	bp_range_out <- c(0, max(unlist(spp_nonCon), na.rm = TRUE))

rm(list = ls()[!ls() \%in\% ls(pattern="_out")])
distMeasures <- FALSE
treeMeasures <- FALSE
output <- as.list(environment())
class(output) <- "slidWin"
output
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
