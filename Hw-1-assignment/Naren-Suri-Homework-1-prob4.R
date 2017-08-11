rgamma1 = rgamma(1000,shape=2,rate=0.5)
rgamma1

rgamma2 = rgamma(1000,shape=2,scale=2)

hist(rgamma1,main ="Histogram for rGamma Data",xlab = "input", ylab="fequency")
hist(rgamma2,main ="Histogram for rGamma Data",xlab = "input", ylab="fequency")
#-------------------------------------------------
curve(2*x^2+3*x+2, from = 11, to = 3)
curve(log10(x), from = -10, to = 10, add = FALSE, type = "l", xlab = "xname", ylab = "ylable name")

#-------------------------------------------------

# plotting the Kernel Density fnction
d <- density(rgamma1) # returns the density data 
plot(d) # plots the results

#------------------------------------------------

# QQ Plot
qqnorm(rgamma1,xlab = deparse(substitute(x)),ylab = deparse(substitute(y)))

THis QQ plot for the data rgamma is actually giving clues about how well the data is distributed.
This has the heavy right tail behaviour, we see the curve on the right side was going up, in different to the general normal distribution behavioour.

# plotting with all the 6 different kernal options 

# --- kernal = epanechnikov
plot(density(rgamma1, kernel = ("epanechnikov")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# --- kernal = rectangular
plot(density(rgamma1, kernel = ("rectangular")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# --- kernal = triangular
plot(density(rgamma1, kernel = ("triangular")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# --- kernal = biweight
plot(density(rgamma1, kernel = ("biweight")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# --- kernal = cosine
plot(density(rgamma1, kernel = ("cosine")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# --- kernal = optcosine
plot(density(rgamma1, kernel = ("optcosine")), col = "blue")
curve(dgamma(x,shape=2,rate=0.5), from = 0, to = 16, add = TRUE, col = "green")

# the 6 different functions has the slight observable ifference for the small set of data i have taken.