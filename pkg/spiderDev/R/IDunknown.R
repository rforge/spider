#IDunknown, a function to compare an alignment of unknown sequences against an alignment of pre-identified specimens.
#known--DNAbin alignment of known sequences
#unknown--DNAbin align,ment of unknown sequence
#NB: alignments much be of the same length, and aligned correctly w.r.t. each other.
IDunknown <- function(unknown, known){
	alignment <- bind(known, unknown)
	dd <- dist.dna(alignment)
	dd[1:dim(known)[1] , dim(known)[1] + 1:dim(dd)[1]]
	#Appropriate metrics here: NN, threshID, bestCloseMatch, whatever....
}