## Generate two data sets
## First Normal, second from a t-distribution
w1<-rnorm(1000, mean=10, sd=2) 
w2<-rnorm(50, mean=3, sd=1) 

## Have a look at the histogram
hist(w1, col="grey")
hist(w1, col="grey", freq=F)

## Have a look at the curve on the histogram
curve( dnorm(x, mean = mean(w1),sd= sd(w1)), add=T, col="red")


## Plot Density plot
library("ggpubr")
library("glue")

ggdensity(w1, 
          main = "W1",
          xlab = "value")

## Plot using a qqplot
qqnorm(w1)
qqline(w1, col = 2)

ggqqplot(w1)

## Perform the test
shapiro.test(w1)

## eGFR example
setwd('D:\\workshop')
dataset = read.csv("eGFR.csv", header=T,colClasses = c("numeric", "numeric", "numeric","numeric", "numeric"))

shapiro.test(dataset[,1])
qqnorm(dataset[,1])
qqline(dataset[,1], col = 2)
