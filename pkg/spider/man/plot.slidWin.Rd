\name{plot.slidWin}
\alias{plot.slidWin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot a 'slidWin' object
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plot.slidWin(slidWin, outliers = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slidWin}{
%%     ~~Describe \code{slidWin} here~~
}
  \item{outliers}{
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
function(slidWin, outliers = FALSE){
	distM <- function(){
		plot(slidWin$pos_out, slidWin$dist_mean_out, xlab = "Position", ylab = "Mean distance", main="Mean distance of each window")
		ylimzero <- range(slidWin$zero_out, slidWin$dat_zero_out, na.rm=TRUE)
		plot(slidWin$pos_out, slidWin$zero_out, ylim = ylimzero, xlab = "Position", ylab = "Proportion of cells", main="Proportion of zero cells in distance matrix")
			abline(h=slidWin$dat_zero_out)
		thres_main <- paste("Number of cells above ", slidWin$thresA, " (black) and below ", slidWin$thresB, " (blue)", sep="")
		ylimthres <- range(slidWin$thres_above_out, slidWin$thres_below_out, na.rm=TRUE)
		plot(slidWin$pos_out, slidWin$thres_above_out, ylim = ylimthres, xlab = "Position", ylab = "Number of cells", main = thres_main)
			points(slidWin$pos_out, slidWin$thres_below_out, col = "blue")
		plot(slidWin$pos_out, slidWin$noncon_out, xlab = "Position", ylab = "Proportion", main = "Proportion of zero non-conspecific distances")
	}

	distT <- function(){
		ylimcomp <- range(slidWin$comp_out, slidWin$comp_depth_out, na.rm=TRUE)
		plot(slidWin$pos_tr_out, slidWin$comp_out, ylim = ylimcomp, xlab = "Position", ylab = "Proportion", main="Proportion of identical clades between trees derived from the full dataset and each window.\nBlack points are uncorrected for node depth.\nBlue points show the proportion of identical terminal nodes")
			points(slidWin$pos_tr_out, slidWin$comp_depth_out, col="blue")
		plot(slidWin$pos_tr_out, slidWin$win_mono_out, xlab = "Position", ylab = "Proportion of monophyly", main = "Proportion of species that are monophyletic")
	}

	if(slidWin$boxplot_out){
		layout(1)
		#plot(1, type = "n", xlim = c(1,length(slidWin$bp_out)), ylim = slidWin$bp_range_out, xaxt = "n", main="Boxplots of distance matrices for each window")
		#axis(1, at = 1:length(slidWin$bp_out), labels = as.character(slidWin$pos_out))
		#for(i in 1:length(slidWin$bp_out)) bxp(slidWin$bp_out[[i]], at=i, add=TRUE, axes=FALSE, whisklty=1, whiskcol="red", staplelty=0, outpch=NA)
		#x11()
		plot(1, type = "n", xlim = c(1,length(slidWin$bp_InterSpp_out)), ylim = c(0, median(slidWin$bp_range_out)), xaxt = "n", main="Boxplots of inter-specific distances (orange whiskers) and \nintra-specific distances (blue whiskers) in each window")
		axis(1, at = 1:length(slidWin$bp_InterSpp_out), labels = as.character(slidWin$pos_out))
		if(outliers){
			for(i in 1:length(slidWin$bp_InterSpp_out)) bxp(slidWin$bp_InterSpp_out[[i]], at=i, add=TRUE, axes=FALSE, whisklty=1, whiskcol="orange", staplelty=0, outpch=20, outcol="orange")
			for(i in 1:length(slidWin$bp_IntraSpp_out)) bxp(slidWin$bp_IntraSpp_out[[i]], at=i, add=TRUE, axes=FALSE, whisklty=1, whiskcol="blue", staplelty=0, outpch=20, outcol="blue", outcex=0.75)
		}
		else{
			for(i in 1:length(slidWin$bp_InterSpp_out)) bxp(slidWin$bp_InterSpp_out[[i]], at=i, add=TRUE, axes=FALSE, whisklty=1, whiskcol="orange", staplelty=0, outpch=NA)
			for(i in 1:length(slidWin$bp_IntraSpp_out)) bxp(slidWin$bp_IntraSpp_out[[i]], at=i, add=TRUE, axes=FALSE, whisklty=1, whiskcol="blue", staplelty=0, outpch=NA)
		}
	}

	if(slidWin$distMeasures && slidWin$treeMeasures){
		layout(matrix(1:6, ncol=2))
		distM()
		distT()
	} else {
			if(slidWin$distMeasures) {
				layout(1:4)
				distM() }
			if(slidWin$treeMeasures){
				layout(1:2)
				distT()}				
		}
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
