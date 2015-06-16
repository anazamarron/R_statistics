b1 <- c(6,16,9,19,8,14,2,19,20,19,7,11,14,10,23,4,12,2,12,18)
b2 <- c(10,5,3,21,12,1,16,25,23,27,25,9,2,3,20,11,20,19,3,18)
b3 <- c(15,5,19,6,5,19,18,7,23,3,2,10,11,22,24,14,8,14,12,22)


k = 3
n1 = length(b1)
n2 = length(b2)
n3 = length(b3)


N = n1 + n2 + n3 

s1 <- sum(b1)
s2 <- sum(b2)
s3 <- sum(b3)


m1 <- round(s1/n1,3)
m2 <- round(s2/n2,3)
m3 <- round(s3/n3,3)


ss1 <- sum(b1^2)
ss1
ss2 <- sum(b2^2)
ss2
ss3 <- sum(b3^2)
ss3


mt <- round((s1 + s2 +s3  ) / N,3)


SSt <- round((ss1 + ss2 + ss3 ) - (N*(mt^2)),3)

SSb <- round((n1*(m1-mt)^2) + (n2*(m2-mt)^2) + (n3*(m3-mt)^2),3)

SSw <- SSt - SSb


dfw <- N - k
dfb <- k - 1



msb <- round(SSb/dfb,2)
msw <- round(SSw/dfw,2)
f <- round(msb/msw,2)
