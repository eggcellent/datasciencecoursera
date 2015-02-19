##The following functions cache the inverses of square matrices. 

## makeCacheMatrix creates a special "matrix" of functions that can store cached inverses
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function()
        x
    setinv <- function (solve)
        inv <<- solve
    getinv <- function()
        inv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## cacheSolve computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated, then inverse should be retrieved from the cache and return a message.

cacheSolve <- function(x, ...) {
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("Yo, I found it already")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}