## Generate two data sets
## First Normal, second from a t-distribution
w1<-rnorm(1000, mean=10, sd=2) 
w2<-rnorm(500, mean=5, sd=3) 

## Have a look at the histogram
hist(w1, col="grey")
hist(w1, col="grey", freq=F)

## Have a look at the curve on the histogram
curve( dnorm(x, mean = mean(w1),sd= sd(w1)), add=T, col="red")

## Perform the test
shapiro.test(w1)
shapiro.test(w2)

## Plot using a qqplot
qqnorm(w1)
qqline(w1, col = 2)

qqnorm(w2)
qqline(w2, col = 2)

## Plot multi qqplot
par( mfrow = c(1,2 ),mai=c(0.3,0.3,0.15,0.15))
qqnorm(w1)
qqline(w1, col = 2)

qqnorm(w2)
qqline(w2, col = 2)


## eGFR example
setwd('D:\\workshop')
dataset = read.csv("eGFR.csv", header=T,colClasses = c("numeric", "numeric", "numeric","numeric", "numeric"))

shapiro.test(dataset[,1])
qqnorm(dataset[,1])
qqline(dataset[,1], col = 2)
