############### Example dataset
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
migraine

############### Assumption for one-sample t-tests

# 1. The data must be continuous . 
# 2. The data must follow the normal probability distribution.
migraine[1:9, ]
migraine[1:9,1 ]
shapiro.test(migraine[1:9,1 ])
# 3. The sample is a simple random sample from its population.


############### Assumption for two-sample t-tests
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






### Assumption One-way ANOVA assumption
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
migraine

## 1. The experimental errors of your data are normally distributed. 
model = aov(pain ~ drug, data=migraine)
model$residuals
shapiro.test(model$residuals)

## 2. Equal variances between treatments Homogeneity of variances Homoscedasticity. 
bartlett.test(pain ~ drug, data=migraine)

## 3.Independence of samples: Each sample is randomly selected and independent 
chisq.test(table(migraine))
