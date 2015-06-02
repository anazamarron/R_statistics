b1 <- c(1,20,13,0,3,5,13,7,14,7)
b2 <- c(1,15,7,10,14,5,3,12,2,6)
b3 <- c(28,4,5,21,25,11,21,3,12,2)
b4 <- c(13,25,9,18,10,25,21,6,24,18)

k = 4
n1 = length(b1)
n2 = length(b2)
n3 = length(b3)
n4 = length(b4)

N = n1 + n2 + n3 +n4

s1 <- sum(b1)
s2 <- sum(b2)
s3 <- sum(b3)
s4 <- sum(b4)

m1 <- round(s1/n1,1)
m2 <- round(s2/n2,1)
m3 <- round(s3/n3,1)
m4 <- round(s4/n4,1)

ss1 <- sum(b1^2)
ss1
ss2 <- sum(b2^2)
ss2
ss3 <- sum(b3^2)
ss3
ss4 <- sum(b4^2)
ss4


mt <- round((s1 + s2 +s3 + s4 ) / N,1)

SSt <- round((ss1 + ss2 + ss3 + ss4) - (N*(mt^2)),1)

SSb <- round((n1*(m1-mt)^2) + (n2*(m2-mt)^2) + (n3*(m3-mt)^2) + (n4*(m4-mt)^2),1)

SSw <- SSt - SSb

N <- 30
k <-3
n<-10

dfw <- N - k
dfb <- k - 1


m1 <- 22.1
m2<- 18.0
m3 <- 19.5

ss1 <- 4913
ss2 <- 3402
ss3 <- 3859

mt <- round((m1+m2+m3)/k,1)


SSt <- round((ss1 + ss2 + ss3 ) - (N*(mt^2)),2)

SSb <- round((n*(m1-mt)^2) + (n*(m2-mt)^2) + (n*(m3-mt)^2),2)

SSw <- SSt - SSb

msb <- round(SSb/dfb,2)
msw <- round(SSw/dfw,2)
f <- round(msb/msw,2)
