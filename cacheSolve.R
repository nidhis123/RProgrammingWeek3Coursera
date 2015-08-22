cacheSolve <- function(x, ...) {
  invers <- x$getinvers()
  if(!is.null(invers)) {
    message("getting cached data") 
    return(invers)
  }
  data <- x$getM()
  invers <- solve(data)
  x$setinvers(invers)
  invers
}