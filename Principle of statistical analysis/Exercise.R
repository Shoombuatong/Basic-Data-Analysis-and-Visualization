####################### Normality test
######### In case of w2
hist(w2, col="grey")
hist(w2, col="grey", freq=F)

curve( dnorm(x, mean = mean(w2),sd= sd(w2)), add=T, col="red")

ggdensity(w2, main = "W1", xlab = "value")

qqnorm(w2)
qqline(w2, col = 2)
ggqqplot(w2)
shapiro.test(w2)

######### Plot multi qqplot
par( mfrow = c(1,2 ),mai=c(0.3,0.3,0.15,0.15))
qqnorm(w1)
qqline(w1, col = 2)

qqnorm(w2)
qqline(w2, col = 2)

####################### Parametric Tests
######### Example of One-sample t-tests
x = c(4, 3, 2, 2, 3, 5, 2, 3, 3, 4, 4, 6)
t.test(x, alternative="greater", mu=3,conf.level = 0.99)

######### Example of Two-sample t-tests (Pooled variance)
WardA =  c(12.2, 11.1, 14.0, 11.3, 10.8, 12.5, 12.2, 11.9, 13.6, 12.7, 13.4, 13.7)
WardB =  c(11.9, 10.7, 12.3, 13.9, 11.1, 11.2, 13.3, 11.4, 12.0, 11.1)
t.test(WardA,WardB,alternative="two.sided", var.equal=TRUE,conf.level = 0.95)

######### Example of One-way ANOVA assumption
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
migraine

aov.out = aov(pain ~ drug, data=migraine)
summary(aov.out)
TukeyHSD(aov.out)

######### Example of   Two-way ANOVA
stree <- c(9,13,11,7,8,11,7,11,9,11,5,7,6,10,4,10,15,8,17,10)
field <- factor(c(rep("phychology",10),rep("business",10)))
proximity <- factor(rep(c(rep("W1",5),rep("W2",5)),2))
data <- data.frame(stree, field, proximity )
data

myanova <- aov(stree ~ field*proximity)
summary(myanova)

TukeyHSD(myanova,which="field:proximity")

######### Example of Two-way ANOVA assumption
relief = c(12,15,16,17,14,14,17,19,20,17,25,27,29,24,22,21,19,18,24,25,21,20,23,27,25,37,34,36,26,29)
sex <- factor(c(rep("male",15),rep("female",15)))
treatment <- factor(rep(c(rep("A",5),rep("B",5),rep("C",5)),2))
data <- data.frame(relief, sex , treatment)
data

myanova <- aov(relief ~ sex*treatment)
summary(myanova)
TukeyHSD(myanova,which="sex:treatment")

####################### Nonparametric Tests
######### Mann Whitney U Test (Wilcoxon Rank Sum Test)
usual	= c(8,	7,	6,	2,	5,	8,	7,	3)
new = 	c(9,	8,	7,	8,	10,	9,	6)	
wilcox.test(usual	,new , alternative = c("two.sided"), exact = FALSE,paired=FALSE)

######### Wilcoxon Signed Rank Test
brandA = c(24,27,19,24,22,26,27,25,22)
brandB = c(26,27,22,27,25,27,26,27,23)
wilcox.test(brandA, brandB, paired=TRUE,alternative = c("two.sided"), exact = FALSE) 

######### The Kruskal-Wallis Test
salary = c(23, 41, 54, 66, 78, 45, 55, 60, 70, 72, 18, 30, 34, 40, 44)
group = c(rep("Women",5), rep("Men",5), rep("Minorities",5))
shoes = data.frame(salary,group)

kruskal.test(salary ~ group, data = shoes)
posthoc.kruskal.nemenyi.test(salary ~ group, data = shoes, method="Tukey")
