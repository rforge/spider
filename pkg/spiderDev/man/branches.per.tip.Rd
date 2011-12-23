\name{branches.per.tip}
\alias{branches.per.tip}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Branches leading to each tip}

\description{This function returns the indices of the branches leading to each tip.}

\usage{
branches.per.tip(phy)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{A `phylo' object.}
}

\details{
}

\value{
A list with a length corresponding to the number of tips in the tree. Each element contains the indices of the branches leading to that tip.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{gmyc}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(dolomedes}
doloTr <- nj(dist.dna(dolomedes))

branches.per.tip(doloTr)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
