\name{titv}
\alias{titv}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Number of pairwise transitions and transversions in an alignment
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
titv(dat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
%%     ~~Describe \code{dat} here~~
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
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(dat){
mat<-as.matrix(dat)
res<-matrix(NA, ncol=dim(mat)[1], nrow=dim(mat)[1], dimnames=list(x=names(dat), y=names(dat)))
for(i in 1:(dim(mat)[1] - 1)){
for(j in (i+1):dim(mat)[1]){
vec<-as.numeric(mat[i,])+as.numeric(mat[j,])-8
res[j,i]<-sum(!is.na(match(vec,c(200,56))))#Transitions
res[i,j]<-sum(!is.na(match(vec,c(152,168,88,104))))#Transversions
  }
  }
res
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
