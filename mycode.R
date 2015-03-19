myfunction <- function() {
	x <- rnorm(100)
	mean(x)
}

second <- function(x) {
	x + rnorm(length(x))
}

meatcat <- function(x,y) {
	y <-rnorm(y)
	x+mean(y)
}