\name{compList}
\alias{compList}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compares two lists}

\description{Compares the elements of two lists to determine if they match.}

\usage{
compList(list1, list2, returnList = FALSE)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{list1, list2}{Lists to compare}
  \item{returnList}{Logical. If FALSE, the output is simplified to a logical vector. If TRUE, a list with the results of each element is returned.}
}

\details{
It's been a little while since I first wrote this, and I can't entirely remember exactly why I wrote it. In particular, I'm not sure why I added the \code{returnList} option.
I guess that's why it's in spiderDev!
}

\value{
If \code{returnList = FALSE}, a logical vector giving the results for each element.

If \code{returnList = TRUE}, a list is returned.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{

}

\examples{

aa <- list(1:4, 5:10, 11:24)
bb <- aa
cc <- list(1:4, 5:11, 12:24)

compList(aa, bb)
compList(aa, cc)
compList(aa, cc, returnList = TRUE)


}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
