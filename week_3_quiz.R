# Week 3 quiz
postscript()
windows()

library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

plot(0, 0, main = expression(theta))

set.seed(1)
rpois(5, 2)
