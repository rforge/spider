\name{tiporder}
\alias{tiporder}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Orders tip labels by their position on the tree
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tiporder(phy)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{Tree of interest}
}
\details{
"monophyly" determines if each species is monophyletic. "monophylyBoot" incorporates a bootstrap test to determine the support for this monophyly. Species with a bootstrap support lower than 'thresh' are recorded as FALSE.
}
\value{
A character vector giving the names of the tip in the order of their position on the tree. The order is that from top to bottom when the tree is plotted with \code{direction = "rightwards"}
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
data(anoteropsis)
anoTree <- nj(dist.dna(anoteropsis))
tiporder(anoTree)


data(woodmouse)
woodTree <- nj(dist.dna(woodmouse))
tiporder(woodTree)
tiporder(ladderize(woodTree))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
