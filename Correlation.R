x <- c(7,55,31,117,58,110,102,18,5,92,36,76,37,12,40)
y <- c(28,12,5,8,20,1,1,29,22,18,10,10,19,17,6)

N <- length(x)
sumx <- sum(x)
sumy <- sum(y)

xmed <- sumx/N
ymed <- sumy/N

xmenosxmed <- x-xmed 
ymenosymed <- y -ymed

xpory <- xmenosxmed*ymenosymed
sumxpory <- sum(xpory)
cov <- sumxpory/N

xmenosxmed2 <- sum(xmenosxmed^2)
ymenosymed2 <- sum(ymenosymed^2)

x2pory2 <- xmenosxmed2*ymenosymed2

r <- sumxpory/sqrt(x2pory2)
sqrt(N-2) * r
t <- (r*sqrt(N-2))/(sqrt(1-(r^2)))
df <- N-2

cor(x,y)
xmenosxmed2
ymenosymed2
t
r
