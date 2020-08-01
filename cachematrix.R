## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function (y) {
    x <<- y
    inv_matrix <<- NULL # Calculate on demand on Get
  }
  get <- function () { x }
  setInverse <- function (z) 
  {
    inv_matrix <<- z
    #x <<- cacheSolve(z)
  }
  getInverse <- function () { 
    inv_matrix 
  }
  
  
  list (set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv_matrix <- x$getInverse()
  
  if(!is.null(inv_matrix))
    return(inv)
  
  x$setInverse(solve(x$get()))
  
  inv_matrix
}