\name{nucDiagExptl}
\alias{nucDiagExptl}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Experimental nucleotide diagnostic function for species alignments
}
\description{
An experimental function that determines the diagnostic nucleotides for each species given in \code{sppVector}. Differs from \code{\link{nucDiag}} by attempting to include the detection of private and compound characters.
}

\usage{
nucDiagExptl(DNAbin, sppVector, block = 1, category = "pure")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DNAbin}{An object of class 'DNAbin'.}
  \item{sppVector}{The species vector (see \code{\link{sppVector}}).}
  \item{block}{Numeric. Number of bases to consider. Default of 1.}
  \item{category}{Character vector. What category of diagnostic nucleotides should be returned? Options of \code{"all"}, \code{"pure"} or \code{"private"}. Default of \code{"pure"}.}
}

\details{
\code{"pure"} diagnostic nucleotides are possessed by ALL members have differences at those sites, and are different from the other species.

\code{"private"} diagnostic nucleotides are possessed by only some of the individuals in the dataset.

Setting the option to \code{"all"} returns all diagnostic nucleotides regardless of whether they are pure or private.

}

\value{
A list giving the site numbers which show diagnostic nucleotides for each species in the species vector. A result of \code{integer(0)} indicates there are no diagnostic nucleotides for those species.
}
\references{
Sarkar, I., Planet, P., & DeSalle, R. (2008). CAOS software for use in character-
based DNA barcoding. _Molecular Ecology Resources_ *8* 1256-1259
}
\author{
Samuel Brown <s_d_j_brown@hotmail.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
	\code{\link{nucDiag}}, \code{\link{slideNucDiag}}
}
\examples{
data(anoteropsis)
anoSpp <- sapply(strsplit(dimnames(anoteropsis)[[1]], split="_"), 
	function(x) paste(x[1], x[2], sep="_"))

nucDiag(anoteropsis, anoSpp)
nucDiagExptl(anoteropsis, anoSpp, block = 2)

#To view the nucleotide values 
anoNuc <- nucDiag(anoteropsis, anoSpp)
as.character(anoteropsis[ ,anoNuc[[1]][1] ])


data(dolomedes)
doloSpp <- substr(dimnames(dolomedes)[[1]], 1, 5)

nucDiag(dolomedes, doloSpp)
nucDiagExptl(dolomedes, doloSpp, category = "pure")
nucDiagExptl(dolomedes, doloSpp, category = "private")
nucDiagExptl(dolomedes, doloSpp, category = "all")

#An interesting exercise: Are the diagnostic nucleotides just the same as the seg.sites?
doloSeg <- seg.sites(dolomedes)
doloDiag <- nucDiagExptl(dolomedes, doloSpp, category = "all")
length(doloSeg)
length(doloDiag)
#No, they're not

doloDiagVec <- c(sort(unlist(doloDiag)), rep(NA, 16))

plot(doloDiagVec ~ doloSeg)
abline(0, 1)

}
