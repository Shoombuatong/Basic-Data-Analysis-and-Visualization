### Mann Whitney U Test (Wilcoxon Rank Sum Test)
### Ex. 1
placebo = 	c(7	,5,	6,	4,	12)
newdrug	= c(3,	6,	4,	2,	1)
wilcox.test(placebo,newdrug, alternative = c("two.sided"), exact = FALSE,paired=FALSE)

### Wilcoxon Signed Rank Test
### Ex. 1
before = c(85 ,70 ,40 ,65 ,80 ,75 ,55 ,20)
after = c(75 ,50 ,50 ,40 ,20 ,65 ,40 ,25)
wilcox.test(before, after, paired=TRUE,alternative = c("two.sided"), exact = FALSE) 

### The Kruskal-Wallis Test
library(PMCMR)

### Ex. 1
albumin = c(3.1,2.6,2.9,3.8,4.1,2.9,3.4,4.2,4.0,5.5,5.0,4.8)
group = c(rep("5per",3), rep("10per",5), rep("15per",4))
mike = data.frame(albumin,group)

kruskal.test(albumin ~ group, data = mike)
posthoc.kruskal.nemenyi.test(albumin ~ group, data = mike, method="Tukey")
