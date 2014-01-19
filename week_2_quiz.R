library(datasets)
data(iris)

?iris
names(iris)

virginica <- subset(iris, Species == "virginica")

mean(virginica[,1],,na.rm = TRUE)

apply(iris[, 1:4], 2, mean)

library(datasets)
data(mtcars)

?mtcars

tapply(mtcars$mpg, mtcars$cyl, mean)
sapply(split(mtcars$mpg, mtcars$cyl), mean)

avg4cyl <- subset(mtcars, cyl==4)
avg8cyl <- subset(mtcars, cyl==8)
abs(mean(avg4cyl[,4]) - mean(avg8cyl[,4]))

f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

z <- 10
f(3)

debug(ls)
ls