\name{plot.slidWin}
\alias{plot.slidWin}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot a 'slidWin' object
}
\description{
Graphical representation of the summary statistics derived from \code{\link{slideAnalyses}} and \code{\link{slideBoxplots}}
}
\usage{
plot.slidWin(slidWin, outliers = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{slidWin}{
An object of class `slidWin'
}
  \item{outliers}{
Logical. When the results of \code{\link{slideBoxplots}} are being called, should the outliers be plotted? Default of FALSE.
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Plots graphs depending on the options given to \code{\link{slideAnalyses}} or \code{\link{slideBoxplots}}
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{slideAnalyses}}
\code{\link{slideBoxplots}}
}
\examples{
data(dolomedes)
doloDist <- dist.dna(dolomedes)
doloSpp <- substr(names(dolomedes), 1, 5)

doloSlide <- slideAnalyses(dolomedes, 200, interval=10, doloSpp, treeMeasures=TRUE)

plot(doloSlide)

doloBox <- slideBoxplots(dolomedes, 200, interval=10, doloSpp, method="overall")

plot(doloBox)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
