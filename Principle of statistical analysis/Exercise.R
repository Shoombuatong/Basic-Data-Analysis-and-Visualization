####################### Normality test
#### In case of w2
hist(w2, col="grey")
hist(w2, col="grey", freq=F)

curve( dnorm(x, mean = mean(w2),sd= sd(w2)), add=T, col="red")

ggdensity(w2, main = "W1", xlab = "value")

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

#######################Nonparametric Tests
### Mann Whitney U Test (Wilcoxon Rank Sum Test)
### Ex. 2
usual	= c(8,	7,	6,	2,	5,	8,	7,	3)
new = 	c(9,	8,	7,	8,	10,	9,	6)	
wilcox.test(usual	,new , alternative = c("two.sided"), exact = FALSE,paired=FALSE)

### Wilcoxon Signed Rank Test
### Ex. 2
brandA = c(24,27,19,24,22,26,27,25,22)
brandB = c(26,27,22,27,25,27,26,27,23)
wilcox.test(brandA, brandB, paired=TRUE,alternative = c("two.sided"), exact = FALSE) 

### The Kruskal-Wallis Test
salary = c(23, 41, 54, 66, 78, 45, 55, 60, 70, 72, 18, 30, 34, 40, 44)
group = c(rep("Women",5), rep("Men",5), rep("Minorities",5))
shoes = data.frame(salary,group)

kruskal.test(salary ~ group, data = shoes)
posthoc.kruskal.nemenyi.test(salary ~ group, data = shoes, method="Tukey")
