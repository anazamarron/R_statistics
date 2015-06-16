x<- c(19,9,4,15,16,17,4,14,6,12,6,6,11,8,12,15,10,14)
y<- c(15,11,14,19,16,18,11,9,9,8,14,8,24,16,12,6)

nx<- length(x)
ny <- length(y)

xmed <- sum(x)/nx
ymed <-sum(y)/ny

xmenosxmed <- x-xmed
ymenosymed <- y-ymed

xmenosxmed2 <- xmenosxmed^2
ymenosymed2 <- ymenosymed^2

sumxmenosxmed2 <-sum(xmenosxmed2)
sumymenosymed2 <-sum(ymenosymed2)

sdx <- sqrt(sumxmenosxmed2/nx)
sdy <- sqrt(sumymenosymed2/ny)


sde <- sqrt( (nx*(sdx^2)+ny*(sdy^2))/(nx+ny-2)) * sqrt((nx+ny)/(nx*ny))

t <- (xmed- ymed)/sde
df <- (nx-1) + (ny-1)
