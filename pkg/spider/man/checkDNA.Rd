\name{checkDNA}
\alias{checkDNA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Check a DNA alignment for missing data}

\description{This functions counts the number of bases in an alignment that are coded as one of the missing bases (i.e. '?' and 'N'). Optionally, gaps (coded as '-') can be considered missing.}

\usage{checkDNA(DNAbin, gapsAsMissing = TRUE)}


%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{A DNA alignment of class 'DNAbin'}
  \item{gapsAsMissing}{Logical. Should gaps (coded as '-') be considered missing bases?}
}

\details{
This function utilises the the bit-level coding scheme developed by Emmanuel Paradis and described in :::::
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

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
