##Returns cached means, or means of uncached vectors
cachemean <- function(x, ...) {  
    m <- x$getmean()  ##Assigns the mean from x$getmean()
    if(!is.null(m)) {  ##If a cached mean is found (previously cached with cachemean), return a message and value
        message("getting cached data")
        return(m)
    }
    data <- x$get()  ##If no cached mean is found (no previously cached mean found), assign a variable with x$getmean result
    m <- mean(data, ...)  ##set m with mean of data
    x$setmean(m)  ##Run x$setmean to the new m
    m  ##Return m
}