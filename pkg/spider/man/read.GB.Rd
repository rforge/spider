\name{read.GB}
\alias{read.GB}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Download sequences from Genbank with metadata
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
read.GB(access.nb, seq.names = access.nb, species.names = TRUE, gene = TRUE, access = TRUE, as.character = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{access.nb}{
%%     ~~Describe \code{access.nb} here~~
}
  \item{seq.names}{
%%     ~~Describe \code{seq.names} here~~
}
  \item{species.names}{
%%     ~~Describe \code{species.names} here~~
}
  \item{gene}{
%%     ~~Describe \code{gene} here~~
}
  \item{access}{
%%     ~~Describe \code{access} here~~
}
  \item{as.character}{
%%     ~~Describe \code{as.character} here~~
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
function(access.nb, seq.names = access.nb, species.names = TRUE, gene=TRUE, access=TRUE,

    as.character = FALSE) 

{

    N <- length(access.nb)

    nrequest <- N\%/\%400 + as.logical(N\%\%400)

    X <- character(0)

    for (i in 1:nrequest) {

        a <- (i - 1) * 400 + 1

        b <- 400 * i

        if (i == nrequest) 

            b <- N

        URL <- paste("http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=", 

            paste(access.nb[a:b], collapse = ","), "&rettype=gb", 

            sep = "")

        X <- c(X, scan(file = URL, what = "", sep = "\n", quiet = TRUE))

    }

    FI <- grep("^ {0,}ORIGIN", X) + 1

    LA <- which(X == "//") - 1

    obj <- list()

    length(obj) <- N

    for (i in 1:N) {

        tmp <- gsub("[[:digit:] ]", "", X[FI[i]:LA[i]])

        obj[[i]] <- unlist(strsplit(tmp, NULL))

    }

    names(obj) <- seq.names

    if (!as.character) 

        obj <- as.DNAbin(obj)

    if (species.names) {

        tmp <- character(N)

        sp <- grep("ORGANISM", X)

        for (i in 1:N) tmp[i] <- unlist(strsplit(X[sp[i]], " +ORGANISM +"))[2]

        attr(obj, "species") <- gsub(" ", "_", tmp)

    if (gene) {

        tmp2 <- character(N)

        def <- grep("DEFINITION", X)

        for (i in 1:N) tmp2[i] <- unlist(strsplit(X[def[i]], "DEFINITION +"))[2]

        attr(obj, "gene") <- gsub(" ", "_", tmp2)

    if (access) {

        tmp3 <- character(N)

        def <- grep("ACCESSION", X)

        for (i in 1:N) tmp3[i] <- unlist(strsplit(X[def[i]], "ACCESSION +"))[2]

        attr(obj, "accession_num") <- gsub(" ", "_", tmp3)

    }

    names(obj)<-paste(attr(obj,"accession_num"), "|", attr(obj,"species"))

    obj

  }

  }

  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
