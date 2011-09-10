\name{monophyly}
\alias{monophyly}
\alias{monophylyBoot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Species monophyly over a tree
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
monophyly(phy, pp = NA, singletonsMono = TRUE)
}
\usage{
monophylyBoot(phy, DNAbin, pp = NA, singletonsMono = TRUE, reps = 1000, thresh = 0.7)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{phy}{
Tree of interest with tip labels consistent within species identity such that length(unique(phy$tip.label)) is the same as the number of species in the tree
}
  \item{pp}{
Object of class prop.part. Assists in speeding up the function, if it has been called already.
}
  \item{singletonsMono}{
Logical. Should singletons (i.e. only a single specimen representing that species) be treated as monophyletic? Default of TRUE. Possible values of FALSE and NA
}
  \item{DNAbin}{
An object of class 'DNAbin'. Required for calculating bootstrap values.
}
  \item{reps}{Numeric. Number of bootstrap replications. Default of 1000.
}
  \item{thresh}{Numeric between 0 and 1. Bootstrap threshold under which potentially monophyletic species are negated. Default of 0.7.
}
}
\details{
"monophyly" determines if each species is monophyletic. "monophylyBoot" incorporates a bootstrap test to determine the support for this monophyly. Species with a bootstrap support lower than 'thresh' are recorded as FALSE.
}
\value{
A logical vector, stating if each species is monophyletic.
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
spp <- rep(LETTERS[1:5], rep(3,5))
tr$tip.label <- spp
monophyly(tr)

tr2 <- tr
spp2 <- c(rep(LETTERS[1:4], rep(3,4)), LETTERS[5:7])
tr2$tip.label <- spp2
monophyly(tr2)

data(anoteropsis)
anoTree <- nj(dist.dna(anoteropsis))
anoSpp <- sapply(strsplit(names(anoteropsis), split="_"), function(x) paste(x[1], x[2], sep="_"))

anoTree$tip.label <- anoSpp
monophyly(anoTree)
monophyly(anoTree, singletonsMono=FALSE)
unique(anoSpp)

data(woodmouse)
woodTree <- nj(dist.dna(woodmouse))
woodSpp <- c("D", "C", "C", "A", "A", "E", "A", "F", "C", "F", "E", "D", "A", "A", "E")
woodTree$tip.label <- woodSpp
monophyly(woodTree)
monophylyBoot(woodTree, woodmouse)
monophylyBoot(woodTree, woodmouse, thresh=0.9)
unique(woodSpp)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
