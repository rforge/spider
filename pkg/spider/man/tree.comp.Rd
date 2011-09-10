\name{tree.comp}
\alias{tree.comp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tree comparisons
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
tree.comp(x, y, method = "prop")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x, y}{
Trees to compare
}
  \item{method}{
one of the following options:
		\item{'prop'}{returns the proportion of clades that are the same between the two trees}
		\item{'PH85'}{returns the topological distance of Penny and Hendy (1985).}
		\item{'shallow'}{returns the proportion of shallow clades (clades of node depth < median node depth) that are the same between the two trees}
default of `prop'
}
}
\details{
This function is a modification of the \code{\link{ape::dist.topo}} function in \code{ape} to give similarity between the two trees as a proportion, and to account for the unreliable resolution of deeper nodes that affect some methods of tree construction (such as NJ).

It is important that the tip labels of the two trees are the same. If the tip labels are different between the two trees, the method will not recognise any similarity between them.

This function does not take into account difference in branch length. The "score" method in \code{\link{ape::dist.topo}} does this if desired.
}
\value{
Numeric vector of length 1. 

If method = "prop", the number is the proportion of nodes between the two trees that contain the same tips. Higher number represents greater similarity. If it is 1, the trees are identical. If 0, the trees have no similarity whatsoever. 

PH85 is the Penny and Hendy (1985) distance. This measure is the default of \code{\link{ape::dist.topo}}. In this measure, the smaller the number, the closer the trees are. If the trees are identical, this results in 0.

When method = "shallow", only those nodes tipwards of the median node depth are taken into account. This will not be useful for small trees, but may be helpful with larger datasets.

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
tr <- rtree(15)
tr2 <- rtree(15)
tree.comp(tr, tr2)
tree.comp(tr, tr2, method="PH85")
tree.comp(tr, tr2, method="shallow")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
