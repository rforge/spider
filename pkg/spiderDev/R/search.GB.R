search.GB <- function(taxon, records = 200, output = "DNAbin"){
	searchURL <- paste("http://eutils.ncbi.nlm.nih.gov/entrez/eutils/esearch.fcgi?db=nuccore&term=", taxon, "&retmax=", records, sep = "")
	searchRes <- xmlTreeParse(searchURL, useInternalNodes = TRUE)
	searchNums <- sapply(getNodeSet(searchRes, "//Id"), xmlValue)
	searchNums
	
	fetchOrd <- ceiling((1:length(searchNums))/200)
	fetchRes <- xmlNode("search.GB.results")
	
	for(i in unique(fetchOrd)){
		fetchNums <- paste(searchNums[fetchOrd == i], collapse = ",")
		fetchURL <- paste("http://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=", fetchNums, "&retmode=XML", sep = "")
		fetchXML <- xmlTreeParse(fetchURL, useInternalNodes = TRUE)
		fetchSeqs <- getNodeSet(fetchXML, "//GBSeq")
		fetchRes <- append.xmlNode(fetchRes, fetchSeqs)
	}
	
	accNum <- sapply(getNodeSet(fetchRes, "//GBSeq_accession-version"), xmlValue)
	accDef <- sapply(getNodeSet(fetchRes, "//GBSeq_definition"), xmlValue)
	accSeqs <- lapply(getNodeSet(fetchRes, "//GBSeq_sequence"), function(xx) as.DNAbin(strsplit(xmlValue(xx), "")))
	accSeqs <- do.call(c, accSeqs)
	names(accSeqs) <- paste(accNum, accDef, sep ="|")

	
	
	if(output == "DNAbin") accSeqs else fetchRes
}
