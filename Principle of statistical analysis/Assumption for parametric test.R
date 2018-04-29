############### Example dataset
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
migraine

############### Checking Assumptions for one-sample t-tests

# 1. The data must be continuous . 
# 2. The data must follow the normal probability distribution.
migraine[1:9, ]
migraine[1:9,1 ]
shapiro.test(migraine[1:9,1 ])
# 3. The sample is a simple random sample from its population.


############### Checking Assumptions for two-sample t-tests
G1 = migraine[1:9,1 ]
G2 = migraine[10:18,1 ]

# 1. The data follow the normal probability distribution. 
shapiro.test(G1)
shapiro.test(G2)

# 2. The variances of the two populations are equal.
G1and2 = migraine[1:18,]
bartlett.test(pain ~ drug, data=G1and2)

# 3. The two samples are independent. There is no relationship between the individuals in one sample as compared to the other. 
chisq.test(table(G1and2))
chisq.test(table(G1and2)+1)
chisq.test(table(G1and2)+0.1)
chisq.test(table(G1and2)+0.01)
chisq.test(table(G1and2)+0.001)
chisq.test(table(G1and2)+0.0001)
# 4. Both samples are simple random samples from their respective populations. 

############### Checking Assumptions for One-way ANOVA 

## 1. The experimental errors of your data are normally distributed. 
model = aov(pain ~ drug, data=migraine)
model$residuals
shapiro.test(model$residuals)

## 2. Equal variances between treatments Homogeneity of variances Homoscedasticity. 
bartlett.test(pain ~ drug, data=migraine)

## 3.Independence of samples: Each sample is randomly selected and independent 
chisq.test(table(migraine))


############### Checking Assumptions for Two-way ANOVA 

bloodpressure <- c(158,163,173,178,168,188,183,198,178,193,186,191,196,181,176,185,190,195,200,180)
biofeedback <- factor(c(rep("present",10),rep("absent",10)))
drug <- factor(rep(c(rep("use",5),rep("notuse",5)),2))
bpdata <- data.frame(bloodpressure, biofeedback, drug)
bpdata

## 1. All samples are drawn from normally distributed populations.
shapiro.test(migraine[,1])

## 2. The samples have a common variance.
G <- factor(c(rep("G1",5),rep("G2",5),rep("G3",5),rep("G4",5)))
bpdata_new <- data.frame(bloodpressure, G)
bartlett.test(bloodpressure ~ G, data=bpdata_new)

## 3. There are no outliers that distort the test results.
boxplot(bloodpressure ~ G, data=bpdata_new)
