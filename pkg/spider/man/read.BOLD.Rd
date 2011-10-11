\name{read.BOLD}
\alias{read.BOLD}
\alias{search.BOLD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Downloads DNA sequences from the Barcode of Life Database (BOLD)}

\description{These functions allow DNA sequences to be downloaded from the Barcode of Life Database (BOLD).}

\usage{search.BOLD(taxon)
read.BOLD(IDs)}



%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{taxon}{A character vector of the names of the taxa of interest}
  \item{IDs}{A character vector containing BOLD process ID numbers}
}

\details{search.BOLD facilitates the retrieval of BOLD process identification numbers for any given taxon.

read.BOLD downloads the sequences associated with the process identification numbers.

}

\value{
search.BOLD returns a character vector giving the process identification numbers of the specimens found by the search.

read.BOLD returns an object of class `DNAbin'. This object has the attributes "species", "accession_num", and "gene". 
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
\code{\link{read.GB}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
#NOT RUN
#nn <- search.BOLD("Pisauridae")
#read.BOLD(nn)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
\keyword{Datasets}% __ONLY ONE__ keyword per line
