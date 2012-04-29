\name{col2string}
\alias{col2string}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Converts R colous names to RGB strings}

\description{This function return the RGB string for the R colour name given.}

\usage{
col2string(x)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{One of the R colour names returned by \code{colours()}.}
}

\details{
}

\value{
A character string of form #XXXXXX where .
}

\references{
}


\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{colours}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

col2string("steelblue2")

col2string("tomato1")

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
