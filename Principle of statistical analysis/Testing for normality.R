## Generate two data sets
## First Normal, second from a t-distribution
words1 = rnorm(100)
words2 = rt(100, df=3)

## Have a look at the densities
plot(density(words1))
plot(density(words2))

## Perform the test
shapiro.test(words1)
shapiro.test(words2)

## Plot using a qqplot
qqnorm(words1)
qqline(words1, col = 2)

qqnorm(words2)
qqline(words2, col = 2)

## Plot multi qqplot
par( mfrow = c(2,1 ),mai=c(0.3,0.3,0.15,0.15))
qqnorm(words1)
qqline(words1, col = 2)

qqnorm(words2)
qqline(words2, col = 2)

## eGFR example
setwd('D:\\workshop')
dataset = read.csv("eGFR.csv", header=T,colClasses = c("numeric", "numeric", "numeric","numeric", "numeric"))

shapiro.test(dataset[,1])
qqnorm(dataset[,1])
qqline(dataset[,1], col = 2)
