\name{search.GB}
\alias{search.GB}

\title{Searches for and downloads DNA sequences from GenBank}

\description{This function searches GenBank and downloads DNA sequences for the given taxon.}

\usage{
search.GB(taxon, records = 200, output = "DNAbin")
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{taxon}{A character vector of the names of the taxa of interest.}
  \item{records}{Numeric. The maximum number of records that should be returned. Default of 200.}
  \item{output}{A character string giving the output format. Default of \code{"DNAbin"} which returns an object of class \code{DNAbin}. Giving \code{"XML"} (or anything else for that matter) will return an object of class \code{}.}
}

\details{
By default, GenBank returns the first 200 results from a search term. 

For convenience, by default this function returns the sequences in the \code{DNAbin} format. It is also possible to retain the data in XML format, which contains all the data associated with each sequence.
}

\value{
When \code{output = "DNAbin"} returns an object of class `DNAbin'. This object has the attributes "species", "accession_num", and "gene". 

When \code{output = "XML"} returns an object of class xxxxxx. Data can be extracted from this object using the tools provided by the \code{XML} package. 
}

\references{
BOLD version 3.0
\url{http://v3.boldsystems.org/}.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{read.GB}}.
%% ~~objects to See Also as \code{\link{help}}, ~~~
}

\examples{
\dontrun{
search.GB(c("Danio kyathit", "Dolomedes", "Sitona discoideus"))

pisaDNA <- search.GB("Pisauridae")

pisaXML <- search.GB("Pisauridae", output = "XML")

}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Barcoding}
\keyword{Datasets}% __ONLY ONE__ keyword per line
