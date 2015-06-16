x <- c(7,55,31,117,38,110,102,18,5,92,36,76,37,12,40)
y <- c(28,12,5,8,20,1,1,29,22,18,10,10,19,17,6)
N <- length(x)
ny <- length(y)
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