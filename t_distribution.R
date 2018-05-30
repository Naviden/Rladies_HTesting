# check out https://www.statmethods.net/advgraphs/probability.html

x <- seq(-4, 4, length=100)
hx <- dnorm(x)

degf <- c(1, 3, 8, 30)
colors <- c("red", "blue", "darkgreen", "gold", 'purple',"black")
labels <- c("df=1", "df=3", "df=8", "df=30","df=120", "normal")

plot(x, hx, type="l", lty=2, xlab="x value",
     ylab="Density", main="Comparison of t Distributions")


lines(x, dt(x,1), lwd=2, col='red')
lines(x, dt(x,3), lwd=2, col='blue')
lines(x, dt(x,8), lwd=2, col='darkgreen')
lines(x, dt(x,30), lwd=2, col='gold')
lines(x, dt(x,120), lwd=2, col='purple')


legend("topright", inset=.05, title="Distributions",
       labels, lwd=2, lty=c(1, 1, 1, 1,1, 2), col=colors)