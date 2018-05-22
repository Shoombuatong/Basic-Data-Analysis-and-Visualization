### Mann Whitney U Test (Wilcoxon Rank Sum Test)
### Ex. 1
placebo = 	c(7	,5,	6,	4,	12)
newdrug	= c(3,	6,	4,	2,	1)
wilcox.test(placebo,newdrug, alternative = c("two.sided"), exact = FALSE,paired=FALSE)

### Ex. 2
usual	= c(8,	7,	6,	2,	5,	8,	7,	3)
new = 	c(9,	8,	7,	8,	10,	9,	6)	
wilcox.test(usual	,new , alternative = c("two.sided"), exact = FALSE,paired=FALSE)

### Wilcoxon Signed Rank Test
### Ex. 1
before = c(85 ,70 ,40 ,65 ,80 ,75 ,55 ,20)
after = c(75 ,50 ,50 ,40 ,20 ,65 ,40 ,25)
wilcox.test(before, after, paired=TRUE,alternative = c("two.sided"), exact = FALSE) 

### Ex. 2
brandA = c(24,27,19,24,22,26,27,25,22)
brandB = c(26,27,22,27,25,27,26,27,23)
wilcox.test(brandA, brandB, paired=TRUE,alternative = c("two.sided"), exact = FALSE) 
