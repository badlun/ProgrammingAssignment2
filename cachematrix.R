## The functions compute the inverse of a newly set matrix x once and cache
## the inverse matrix of x.

## This function saves a matrix x and the inversed matrix of x in cache.
## It returns a list of 4 functions that can be used to access the the 
## matrix x and the inversed matrix of x.
makeCacheMatrix <- function(x = matrix()) {
    cim <- NULL # Initialize cached inversed matrix for a matrix x
    set <- function(y) { # Set a new matrix
        x <<- y
        cim <<- NULL # Initialize the cached inversed matrix for a new matrix
    }
    get <- function() x # Returns matrix x 
    setinverse <- function(inverse) cim <<- inverse # Saves inversed matrix of x
    getinverse <- function() cim # Returns cached inversed matrix of x 
    
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## This function returns the inverse matrix  of 'x' from the cache.   
## The inverse of x will be computed when it is not found in the cache.
cacheSolve <- function(x, ...) {
    # Accesses cached data
    cim <- x$getinverse()
    if(!is.null(cim)) {
        message("getting cached data")
        return(cim)
    }
    # Computes the inversed matrix of x and cache it
    data <- x$get()
    cim <- solve(data, ...)
    x$setinverse(cim)
    cim    
}
