tajima.K <-
function(x, prop = TRUE){
   res <- mean(dist.dna(x, model="N"))
   if(prop) res <- res/dim(x)[2]
   res
}

