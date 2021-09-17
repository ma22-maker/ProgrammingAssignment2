## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function##The function below creates and stores the values of the matrix
CacheMatrix <- c(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, 
       get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}

##The function below computes the inverse of the matrix if not yet done,
##then, it retrieves the inverse from the cache.
CacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
    message("The data is being cached")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  i
}

##Recall the matrix that is the inverse of "x" 
