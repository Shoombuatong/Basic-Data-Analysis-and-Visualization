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

### Wilcoxon Signed Rank Test
library(PMCMR)
### Ex. 1
Input =("
Group      Value
Group.1      1
Group.1      2
Group.1      3
Group.1      4
Group.1      5
Group.1      6
Group.1      7
Group.1      8
Group.1      9
Group.1     46
Group.1     47
Group.1     48
Group.1     49
Group.1     50
Group.1     51
Group.1     52
Group.1     53
Group.1    342
Group.2     10
Group.2     11
Group.2     12
Group.2     13
Group.2     14
Group.2     15
Group.2     16
Group.2     17
Group.2     18
Group.2     37
Group.2     58
Group.2     59
Group.2     60
Group.2     61
Group.2     62
Group.2     63
Group.2     64
Group.2    193
Group.3     19
Group.3     20
Group.3     21
Group.3     22
Group.3     23
Group.3     24
Group.3     25
Group.3     26
Group.3     27
Group.3     28
Group.3     65
Group.3     66
Group.3     67
Group.3     68
Group.3     69
Group.3     70
Group.3     71
Group.3     72
")

Data = read.table(textConnection(Input),header=TRUE)
kruskal.test(Value ~ Group, data = Data)
posthoc.kruskal.nemenyi.test(Value ~ Group, data = Data, method="Tukey")

### Ex. 2
Input =("
Obs Health     Efficiency
1   Normal     2.9
2   Normal     3.0
3   Normal     2.5
4   Normal     2.6
5   Normal     3.2
6   OAD        3.8
7   OAD        2.7
8   OAD        4.0
9   OAD        2.4
10  Asbestosis 2.8
11  Asbestosis 3.4
12  Asbestosis 3.7
13  Asbestosis 2.2
14  Asbestosis 2.0
")

Data = read.table(textConnection(Input),header=TRUE)
kruskal.test(Efficiency ~ Health, data = Data)
posthoc.kruskal.nemenyi.test(Efficiency ~ Health, data = Data, method="Tukey")

### Ex. 3
albumin = c(3.1,2.6,2.9,3.8,4.1,2.9,3.4,4.2,4.0,5.5,5.0,4.8)
group = c(rep("5per",3), rep("10per",5), rep("15per",4))
mike = data.frame(albumin,group)

kruskal.test(albumin ~ group, data = mike)
posthoc.kruskal.nemenyi.test(albumin ~ group, data = mike, method="Tukey")

