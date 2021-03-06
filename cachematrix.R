## Coursera Week 3 Assignment R programming course

## makeCacheMatrix function creates a Matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
      x <<- y
     inv <<- NULL
    }
   get <- function() x
   setInverse <- function(inverse) inv <<- inverse
   getInverse <- function() inv
   list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## cacheSolve function that creates an inverse of the matrix generated by the the makeCacheMatrix function.

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
