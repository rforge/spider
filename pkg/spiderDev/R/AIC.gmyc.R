AIC.gmyc <- function(gmyc){
	L <- gmyc$likelihood
	ell <- gmyc$tree$Nnode
	k <- dim(gmyc$parameters)[2] + sapply(gmyc$threshold.time, length)
	AIC <- (-2 * L) + (2 * k) + ((2 * k * (k + 1)) / (ell - k - 1))
	delta <- AICweights(AIC)$delta
	weight <- AICweights(AIC)$weight
	mean_ent <- sum(weight * gmyc$entity)
	var_ent <- sum(weight * sqrt((gmyc$entity - mean_ent)^2))^2
	list(AIC = AIC, delta = delta, weight = weight, mean_ent = mean_ent, var_ent = var_ent)
}