rankSlidWin <- 
function(slidWin, criteria = "all", num = 10){
	revRank <- function(xx) (length(xx)+1) - rank(xx, ties.method="min")
	measures <- c("position", "mean_distance", "monophyly", "clade_comparison", "clade_comp_shallow", "zero_noncon", "zero_distances", "above_threshold", "below_threshold")
	#Remove objects not of interest
	excluded <- match(c("dat_zero_out", "boxplot_out", "distMeasures", "thresA", "thresB", "treeMeasures", "pos_tr_out"), names(slidWin))
	dFrame <- as.data.frame(slidWin[-excluded])
	#Reorder and rename dataframe columns
	dfOrder <- match(c("pos_out", "dist_mean_out", "win_mono_out", "comp_out", "comp_depth_out", "noncon_out", "zero_out", "thres_above_out", "thres_below_out"), names(dFrame))
	dFrame <- dFrame[ , dfOrder]
	names(dFrame) <- measures
	#Order rows
	high <- match(c("monophyly", "clade_comparison", "clade_comp_shallow", "above_threshold", "mean_distance"), measures)
	low <- match(c("zero_noncon", "below_threshold", "zero_distances"), measures)
	lowVal <- as.data.frame(lapply(dFrame, function(x) rank(x, ties.method="min")))
	highVal <- as.data.frame(lapply(dFrame, revRank))
	dfVals <- highVal
	dfVals[ , low] <- lowVal[ , low]
	if(criteria == "all") rowOrd <- order(apply(dfVals[ , -1], MARGIN=1, FUN=sum))
		else{
			ordNum <- which(measures %in% criteria)
			if(length(criteria) > 1) rowOrd <- order(apply(dfVals[ , ordNum], MARGIN=1, FUN=sum))
				else rowOrd <- order(dfVals[ , ordNum])
				}
	#Return top 10
	head(dFrame[ rowOrd , ], n = as.integer(num))
}