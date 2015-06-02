x <- c(10,11,5,6,1,12,1,6,10,7)
y <- c(22,49,58,69,62,36,42,61,28,21)
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