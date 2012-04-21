\name{plot.simRFLP}
\alias{plot.simRFLP}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot an 'simRFLP' object
}
\description{
Plots an ordination of the Principal Components Analysis conducted by \code{\link{simRFLP}}.
}
\usage{
\method{plot}{simRFLP}(x, sppcol = NULL, linecol = "grey25", linewex = 0.4, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{An object of class `simRFLP'.}
  \item{sppcol}{Used to plot differently coloured lines for each species. The species vector (see \code{\link{sppVector}}) can be used.}
  \item{linecol}{Colour that lines should be coloured. Ignored if \code{sppcol} is given.}
  \item{linewex}{Width of each band. Default of 0.4.}
   \item{...}{Other arguments to be passed to \code{plot}.}
}

\details{
\code{sppcol} can be given as character or numeric vectors. The latter is useful if the default palette is not suitable.
}
\value{
Plots a depiction of the fragment lengths resulting from the RFLP analysis conducted using \code{\link{simRFLP}}.

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
\code{\link{simRFLP}}.
}
\examples{
data(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

doloRFLP <- simRFLP(dolomedes, "Alu1")

plot(doloRFLP)
plot(doloRFLP, sppcol = doloSpp)
plot(doloRFLP, sppcol = as.numeric(as.factor(doloSpp))*10)
plot(doloRFLP, linewex = 0.1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{RFLP}
