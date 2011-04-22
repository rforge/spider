is.ambig <-
function(x){
   x <- as.matrix(x)
   bases <- c(136, 72, 40, 24)
   ambig <- apply(x, 2, FUN=function(x) sum(as.numeric(!as.numeric(x) %in% bases)))
   ambig > 0
}

