x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

n <- 1:4
r <- lapply(n, runif)

x <- list(rnorm(100), runif(100), rpois(100, 1))
  sapply(x, quantile, probs = c(0.25, 0.75))