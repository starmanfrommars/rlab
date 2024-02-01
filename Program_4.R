nfact2<- function(n) {
  if(n==1) {
    cat("Calles nfact2(1)\n")
    return(1)
  }
  else {
    cat("Called nfact2(",n,")\n", sep=" ")
    return(n*nfact2(n-1))
  }
}
nfact2(5)


# alternate method
n_factorial <- function(n) {
  n_fact <- prod(1:n)
  return(n_fact)
}
n_factorial(5)