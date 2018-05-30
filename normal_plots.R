ht <- seq(150,190,0.01)
pd <- dnorm(ht,170,8)

num <- 180
plot(ht, dnorm(ht, 170,8), type = 'l', col = 'brown',
     ylab = 'Probability density', xlab = 'Delay', main = 'Station S65464')
yv <- pd[ht<= num]
xv <- ht[ht <= num]
xv <- c(xv,num,150)
yv <- c(yv,yv[1],yv[1])
polygon(xv,yv,col = 'orange')
