##Quiz 3
##1
library(iris)
data(iris)

vir <- iris[which(iris[,"Species"]== "virginica"),]
mean(vir$Sepal.Length)

##2
apply(iris[,1:4],2, mean) ## Correct
rowMeans(iris[,1:4]) ##Incorrect, returns mean of each row for col 1:4
apply(iris,2,mean) ##Incorrect, returns Warning 
apply(iris,1,mean)##Incorrect, returns mean for rows, including non-numeric value

##3
library(datasets)
data(mtcars)

with(mtcars, tapply(mpg, cyl, mean))  ##Correct
apply(mtcars, 2, mean) ##Takes mean over all columns
split(mtcars, mtcars$cyl)  ##Splits lists of cars by cyl
tapply(mtcars$cyl, mtcars$mpg, mean) ##Applies function over cyl, and splits by mpg.
## Note: reversing the factors also yields correct result
tapply(mtcars$mpg, mtcars$cyl, mean)

##4
hpcyl <- tapply(mtcars$hp, mtcars$cyl, mean)
diffe <- max(hpcyl) - min(hpcyl)