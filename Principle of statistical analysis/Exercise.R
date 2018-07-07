#### In case of w2
hist(w2, col="grey")
hist(w2, col="grey", freq=F)

curve( dnorm(x, mean = mean(w2),sd= sd(w2)), add=T, col="red")

ggdensity(w2, 
          main = "W1",
          xlab = "value")

qqnorm(w2)
qqline(w2, col = 2)
ggqqplot(w2)
shapiro.test(w2)

## Plot multi qqplot
par( mfrow = c(1,2 ),mai=c(0.3,0.3,0.15,0.15))
qqnorm(w1)
qqline(w1, col = 2)

qqnorm(w2)
qqline(w2, col = 2)
