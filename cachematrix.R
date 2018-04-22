## Put comments here that give an overall description of what your
## functions do

        ## These fuctions are for the week 3 peer graded assignment sets the values of a matrix, 
        ## finds the values and returns  the inverse matrix and caches it.

## Write a short comment describing this function

        ## This function creates the matrix used by the function below to cache the inverse

> makeCacheMatrix <- function(x = matrix()) {
        +     inv <- NULL
        + 	set <- function(y) {
                +     	x <<- y
                + 		inv <<- NULL
                + 	}
        + 	get <- function() x
        +     	setinv <- function(invers) inv <<- invers
        +     	getinv <- function() inv
        +     	list(set = set, get = get, setinv = setinv, getinv = getinv)
        +     }

## Write a short comment describing this function

        ## This function creates the inverse of the matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

cacheSolve <- function(x, ...) {

        +	inv <- x$getinv()
        +	if(!is.null(inv)) {
                      +		message("getting cached data")
                      +		return(inv)
                      +	}
               +	data <- x$get()
               +	inv <- solve(data)
               +	x$setinv(inv)
               +	inv
          +}