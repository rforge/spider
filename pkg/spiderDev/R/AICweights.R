	AICweights <- function(AIC){
	delta <- AIC - min(AIC)
	w <- exp(-(1/2) * delta)
	weight <- w/sum(w)
	list(AIC = AIC, delta = delta, weight = weight)
}
