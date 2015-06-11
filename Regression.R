x <- c(5,7,7,3,7,2,6,2,3,2,1,5,0,5,2,2)
y <- c(25,12,14,17,16,23,17,21,17,24,23,18,29,11,14,20)
N <- length(x)

totx <- sum(x)
toty <- sum(y)
avgy <- toty/N
avgx <-totx/N
xy <- x*y
x2 <- x^2
totxy <- sum(xy)
totx2 <- sum(x2)

Beta  <- (N*totxy - (totx*toty))/((N*totx2)-(totx^2))
alpha <- avgy - (Beta*avgx)

esty <- alpha + Beta * x
ymensoesti <- y - esty
sum(ymensoesti^2)

sum(ymensoesti^2) / (N-2)

sigma <- sqrt(((sum(ymensoesti^2))/(N-2)))/ sqrt(sum((x-avgx)^2))
t <- Beta / sigma

df <-N-2

#Voy a la t-table