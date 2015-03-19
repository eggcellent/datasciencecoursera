##Creates a "special vector" containing a list of functions 
##
makeVector <- function(x = numeric()) {  ##make a function
    m <- NULL  ##Create a null value
    set <- function(y) {  ##1st function: sets x,m as variables searchable in other environments
        x <<- y
        m <<- NULL
    }
    get <- function()  ##2nd function: returns the value of x
        x
    setmean <- function(mean)  ##3rd: sets m to mean, searchable in other environments
        m <<- mean
    getmean <- function()  ##4th: returns the mean value of x
        m
    list(set = set, get = get, setmean = setmean, getmean = getmean)  ##Lists makeVector functions
}