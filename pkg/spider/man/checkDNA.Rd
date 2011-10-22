\name{checkDNA}
\alias{checkDNA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Check a DNA alignment for missing data}

\description{This functions counts the number of bases in an alignment that are coded as one of the missing bases (i.e. '?' and 'N'). By default, gaps (coded as '-') are also considered missing.}

\usage{checkDNA(DNAbin, gapsAsMissing = TRUE)}


%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{A DNA alignment of class 'DNAbin'}
  \item{gapsAsMissing}{Logical. Should gaps (coded as '-') be considered missing bases? Default of TRUE}
}

\details{

}

\value{
A numeric vector giving the number of missing bases in each alignment
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
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
data(woodmouse)
checkDNA(woodmouse)
checkDNA(woodmouse, gapsAsMissing=FALSE)
}

\keyword{Utilities}