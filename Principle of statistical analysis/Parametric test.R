# Ex 1 One-sample t-tests
x = c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3,conf.level = 0.95)


# Ex 1 Two-sample t-tests (Pooled variance)
Control = c(91, 87, 99, 77, 88, 91)
Treat = c(101, 110, 103, 93, 99, 104)
t.test(Control,Treat,alternative="less", var.equal=TRU,conf.level = 0.95)


# Ex 2 Two-sample t-tests (Pooled variance)
WardA =  c(12.2, 11.1, 14.0, 11.3, 10.8, 12.5, 12.2, 11.9, 13.6, 12.7, 13.4, 13.7)
WardB =  c(11.9, 10.7, 12.3, 13.9, 11.1, 11.2, 13.3, 11.4, 12.0, 11.1)
t.test(WardA,WardB,alternative="two.sided", var.equal=TRUE,conf.level = 0.95)


# Ex 1 Two-sample t-tests (Separated variance)
Standard =  c(35, 104, 27, 53, 72, 64, 97, 121, 86, 41 )
New =  c(27, 52, 46, 33, 37, 82, 51, 92, 68, 62 )
t.test(Standard,New,alternative="two.sided", var.equal=TRUE)

# Ex 1 One-way ANOVA
attach(InsectSprays)
InsectSprays
plot(count ~ spray, data=InsectSprays)

aov.out = aov(count ~ spray, data=InsectSprays)
summary(aov.out)
TukeyHSD(aov.out)

# Ex 2 One-way ANOVA
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
migraine
plot(pain ~ drug, data=migraine)

aov.out = aov(pain ~ drug, data = migraine)
summary(aov.out)
TukeyHSD(aov.out)
