## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    cim <- NULL # Initialize the cached inversed matrix of x
    set <- function(y) { # Set a new matrix
        x <<- y
        cim <<- NULL # Initialize the cached inversed matrix for the new matrix
    }
    get <- function() x
    setinverse <- function(inverse) cim <<- inverse
    getinverse <- function() cim
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
