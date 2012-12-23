\name{carpophilus}
\docType{data}
\alias{carpophilus}
\alias{carpoCOI}
\alias{carpo28S}
\alias{carpoITS}
\title{Sequence alignments of  _Carpophilus_ species}

\description{DNA}

\usage{
carpoCOI
carpo28S
carpoITS
}

\format{Objects of class `DNAbin', stored as matrices. 

\code{carpoCOI} is an alignment of 105 sequences from the 5' end of cytochrome c oxidase subunit 1, and are 576 bp in length. Sequences are available on Genbank as accession numbers GU217433 through GU217530.

\code{carpo28S} is an alignment of 43 sequences from the 5' end of the D1-D2 region of the 28S ribosomal RNA gene, and are 734 bp in length. Sequences are available on Genbank as accession numbers GU217391 through GU217432.

\code{carpoITS} is an alignment of 53 sequences from the internal transcribed spacer 2 (ITS2) region in the nuclear ribosomal encoding cistrons, and are 504 bp in length. Sequences are available on Genbank as accession numbers GU217338 through GU217390.

Sequences are named in the following format: "accessionNumber|speciesCode|geographicCode". 

Species codes are made up of three blocks of four characters each. The first block encodes the genus, the second the species, and the third the subspecies. 

Geographic codes are as follows:  AUS--Australia, BIS--Bismarck Islands, FIJ--Fiji, HAW--Hawaii, KER--Kermadec Islands, NAU--Nauru, NCL--New Caledonia, NZL--New Zealand, SAM--Samoa, SOC--Society Islands (French Polynesia), TON--Tonga, TUB--Austral (Tubuai) Islands (French Polynesia), TUV--Rotuma Island (close to Tuvalu), USA--United States of America, VAN--Vanuatu

}

\source{
Brown, S. D. J., Armstrong, K. F., and Cruickshank, R. H. (2012). Molecular phylogenetics of a South Pacific sap beetle species complex (_Carpophilus_ spp., Coleoptera: Nitidulidae). _Molecular Phylogenetics and Evolution_ *64(3)* 428-440. URL: http://dx.doi.org/10.1016/j.ympev.2012.04.018

}

\examples{

data(carpophilus)

#subspecies vectors
carpoCOIsspp <- sapply(strsplit(dimnames(carpoCOI)[[1]], split = "\\\\|"), function(xx) xx[2])
carpo28Ssspp <- sapply(strsplit(dimnames(carpo28S)[[1]], split = "\\\\|"), function(xx) xx[2])
carpoITSsspp <- sapply(strsplit(dimnames(carpoITS)[[1]], split = "\\\\|"), function(xx) xx[2])

#species vectors
carpoCOIspp <- substr(carpoCOIsspp, 1,  8)
carpo28Sspp <- substr(carpo28Ssspp, 1,  8)
carpoITSspp <- substr(carpoITSsspp, 1,  8)

}


\keyword{Datasets}

