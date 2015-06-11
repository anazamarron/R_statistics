x <- c(16,77,9,16,80,69,50,78,52,47,79,66,11,65)
y <- c(0,15,15,3,2,22,28,20,17,10,12,27,21,13)

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
