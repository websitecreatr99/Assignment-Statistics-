# cr for test mu=8 vs mu != 8  sd= 2 is mean lies in (l,u) alpha=0.05
z=qnorm(0.021, lower.tail=FALSE)
z
l=8-(2*(1/sqrt(16))*z)
l
u=8+(2*(1/sqrt(16))*z)
u

# under h1 mean follows normal (mu, sd=2)
mu=seq(5,11,0.01)
mu
power=1-(pnorm(u,mean = mu, sd = 2/sqrt(16),lower.tail = TRUE)-pnorm(l,mean = mu, sd = 2/sqrt(16),lower.tail = TRUE))
power
plot(mu, power, type = "l", lwd = 2, col = "blue", ylab = "power", xlab = "mu")
