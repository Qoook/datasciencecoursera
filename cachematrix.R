## These functions are to create a matrix, and then compute and cache its inverse and eventually returns the cached inverse if it is already cached.
Put comments here that give an overall description of what your
## functions do

## This first function is to a matrix and store its inverse 

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set = set, get = get,
	     setinverse = setinverse,
	     getinverse = getinverse)

}


## This second function is to return the inverse of the matrix created in the first function. 
## If the inverse is already there, this function retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setinverse(m)
	m
        ## Return a matrix that is the inverse of 'x'
}
