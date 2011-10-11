\name{is.ambig}
\alias{is.ambig}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Missing bases in alignments
}

\description{
Checks what columns in an alignment have missing data
}

\usage{
is.ambig(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
A DNA alignment of class `DNAbin'
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

\author{Samuel Brown <s_d_j_brown@hotmail.com>}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(woodmouse)
is.ambig(woodmouse)
}

\keyword{Utilities}