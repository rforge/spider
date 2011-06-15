\name{rankSlidWin}
\alias{rankSlidWin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Rank a 'slidWin' object
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rankSlidWin(slidWin, criteria="all")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slidWin}{
%%     ~~Describe \code{slidWin} here~~
}
  \item{criteria}{
%%     ~~Describe \code{outliers} here~~
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
rankSlidWin <- 
function(slidWin, criteria="all"){
	revRank <- function(xx) (length(xx)+1) - rank(xx, ties.method="min")
	measures <- c("position", "mean_distance", "monophyly", "clade_comparison", "clade_comp_shallow", "zero_noncon", "zero_distances", "above_threshold", "below_threshold")
	#Remove objects not of interest
	excluded <- match(c("dat_zero_out", "boxplot_out", "distMeasures", "thresA", "thresB", "treeMeasures", "pos_tr_out"), names(slidWin))
	dFrame <- as.data.frame(slidWin[-excluded])
	#Reorder and rename dataframe columns
	dfOrder <- match(c("pos_out", "dist_mean_out", "win_mono_out", "comp_out", "comp_depth_out", "noncon_out", "zero_out", "thres_above_out", "thres_below_out"), names(dFrame))
	dFrame <- dFrame[ , dfOrder]
	names(dFrame) <- measures
	#Order rows
	high <- match(c("monophyly", "clade_comparison", "clade_comp_shallow", "above_threshold", "mean_distance"), measures)
	low <- match(c("zero_noncon", "below_threshold", "zero_distances"), measures)
	lowVal <- as.data.frame(lapply(dFrame, function(x) rank(x, ties.method="min")))
	highVal <- as.data.frame(lapply(dFrame, revRank))
	dfVals <- highVal
	dfVals[ , low] <- lowVal[ , low]
	if(criteria == "all") rowOrd <- order(apply(dfVals[ , -1], MARGIN=1, FUN=sum))
		else{
			ordNum <- which(measures %in% criteria)
			if(length(criteria) > 1) rowOrd <- order(apply(dfVals[ , ordNum], MARGIN=1, FUN=sum))
				else rowOrd <- order(dfVals[ , ordNum])
				}
	#Return top 10
	head(dFrame[ rowOrd , ], n=10L)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
