\name{slideAnalyses}
\alias{slideAnalyses}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Sliding window analyses
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
slideAnalyses(dat, width, spp, interval = 1, distMeasures = TRUE, thresA = 0.2, thresB = 0.1, treeMeasures = FALSE)
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
  \item{distMeasures}{
%%     ~~Describe \code{distMeasures} here~~
}
  \item{thresA}{
%%     ~~Describe \code{thresA} here~~
}
  \item{thresB}{
%%     ~~Describe \code{thresB} here~~
}
  \item{treeMeasures}{
%%     ~~Describe \code{treeMeasures} here~~
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
function(dat, width, spp, interval = 1, distMeasures = TRUE, thresA = 0.2, thresB = 0.1, treeMeasures = FALSE){
	#Produce distance matrix, number of zero cells of full sequence
	boxplot_out <-FALSE
	dat <- as.matrix(dat)
	dimnames(dat)[[1]] <- spp
	datd <- dist.dna(dat, pairwise.deletion = TRUE)
	dat_zero_out <- sum(as.numeric(datd == 0))/length(datd)
	#Create the windows
	win <- slidingWindow(dat, width-1, interval = interval)
	pos_out <- sapply(win, function(x) attr(x, "window")[1])
	win_dist <- lapply(win, function(x) dist.dna(x, pairwise.deletion = TRUE))
	#Distance metrics
	if(distMeasures){
		#Mean of distance matrix
		dist_mean_out <- sapply(win_dist, mean) 
		#Number of zero cells
		zero_out <- sapply(win_dist, function(y) sum(as.numeric(y == 0))/length(y))
		#Threshold measures
		thres_above_out <- sapply(win_dist, function(x) sum( as.numeric(x >= thresA) ) )
		thres_below_out <- sapply(win_dist, function(x) sum( as.numeric(x <= thresB) ) )
		#Nearest non-conspecific distance
		noncon_out <- sapply(win_dist, function(x) nonConDist(x, propZero = TRUE))
		
	}
	if(treeMeasures){
		#Produce NJ tree of full sequence
		dat_tr <- nj(datd)
		depth <- which(node.depth(dat_tr)[node.depth(dat_tr) > 1] <= median(node.depth(dat_tr)[node.depth(dat_tr) > 1]))
		#Remove windows with NA distances
		dist_na <- sapply(win_dist, function(x)  sum( as.numeric( is.na(x) ) ) )
		pos_tr_out <- pos_out[ dist_na < 1 ]
		win_tr <- lapply(win_dist[ dist_na < 1 ], nj)
		#Comparing clade composition with full alignment
		comp_out <- sapply(win_tr, function(x) tree.comp(dat_tr, x))
		comp_depth_out <- sapply(win_tr, function(x) tree.comp(dat_tr, x, method="shallow"))
		#Monophyly
		win_mono <- lapply(win_tr, monophyly)
		win_mono_out <- sapply(win_mono, function(x) length(which(x))/length(x))
		}
rm(list = ls()[!ls() \%in\% c(ls(pattern="_out"), ls(pattern="res"))])
output <- as.list(environment())
class(output) <- "slidWin"
output
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
