\name{meiersBestMatch}
\alias{meiersBestMatch}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Conducts Meier's Best Match analysis of identification accuracy}

\description{}

\usage{meiersBestMarch(dat, spp, threshold = 0.01)}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{A distance object (usually from dist.dna()).}
  \item{spp}{Vector of species names. }
  \item{threshold}{Distance cutoff for identifications. Default of 0.01 (1%)}
}

\details{

}

\value{
A character vector giving the number of missing bases in each alignment
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
\code{\link{dist.dna}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{

data(anoteropsis)

sppNames <- sapply(strsplit(names(anoteropsis), split="_"), function(x) paste(x[1], x[2], sep="_"))

meiersBestMatch(anoteropsis, sppNames)

meiersBestMatch(anoteropsis, sppNames, threshold=0.005)

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
