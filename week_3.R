#Week 3
x <- rnorm(100)
hist(x)
y <- rnorm(100)
plot(x,y)
z <- rnorm(100)
plot(x,z)
plot(x,y)
par(mar = c(2, 2, 2, 2))
plot(x,y)
par(mar = c(4, 4, 2, 2))
plot(x,y)
plot(x,y, pch=20)
example(points)
require(stats)
plot(-4:4, -4:4, type = "n")

# Lattice
x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
f <- gl(2, 50, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f)

xyplot(y ~ x | f,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.abline(h = median(y),
                      lty = 2)
       })

xyplot(y ~ x | f,
       panel = function(x, y, ...) {
         panel.xyplot(x, y, ...)
         panel.lmline(x, y, col = 2)
       })

# Ggplot
qplot(x,y)

str(mpg)
qplot(displ, hwy, data = mpg,	color	=	drv)
qplot(displ, hwy, data = mpg,	geom = c("point",	"smooth"))
qplot(hwy, data = mpg, fill = drv)
qplot(displ, hwy, data = mpg, facets = . ~ drv)
qplot(hwy, data = mpg, facets = drv ~ ., binwidth = 2)

# Latex
plot(0, 0, main = expression(theta == 0),
     ylab = expression(hat(gamma) == 0),
     xlab = expression(sum(x[i] * y[i], i==1, n)))

x <- rnorm(100)
hist(x,
     xlab=expression("The mean (" * bar(x) * ") is " *
                       sum(x[i]/n,i==1,n)))

x <- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
plot(x, y,
     xlab=substitute(bar(x) == k, list(k=mean(x))),
     ylab=substitute(bar(y) == k, list(k=mean(y)))
)

par(mfrow = c(2, 2))
for(i in 1:4) {
  x <- rnorm(100)
  hist(x, main=substitute(theta==num,list(num=i)))
}
