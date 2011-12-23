\name{homoP}
\alias{homoP}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Homopolymers in DNA sequences}

\description{Determines the number of homopolymeric series over a certain size within DNA sequences.}

\usage{
homoP(string, num)
}

%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{string}{DNA sequence}
  \item{num}{Length of homopolymer}
}

\details{
Homopolymer series in DNA sequences are stretches of a single base e.g. TAAAAAAACGT. They cause read errors in some next generation sequencing devices such as 454 pyrosequencing due to the chemistry used in these devices. This function allows the number of homopolymeric series in sequences to be counted. When conducted in conjunction with a sliding window analysis, it can help determine which portion of a gene might perform best in a study where NGS may be used.
}

\value{
A value giving the number of homopolymeric series in the sequence.
}

\author{
Samuel Brown <s_d_j_brown@hotmail.com> and Stephane Boyer
}

\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{

}

\examples{

data(dolomedes)

homoP(dolomedes[1,], 4) 

apply(dolomedes, MARGIN = 1, function(x) homoP(x, 4))

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Utilities}
