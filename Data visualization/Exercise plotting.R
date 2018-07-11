########################### multiplot
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
colors <- c("red","blue","green")
boxplot(pain ~ drug,data= migraine, main='Migraine', col = colors ,horizontal=FALSE)

drugA  = subset(migraine, drug == "A")
drugB  = subset(migraine, drug == "B")
drugC  = subset(migraine, drug == "C")
drugAB = rbind(drugA, drugB)
drugAC = rbind(drugA, drugC)
drugBC = rbind(drugB, drugC)

par( mfrow = c(2,2 ),mai=c(0.5,0.5,0.4,0.4))
boxplot(pain ~ drug,data= migraine, main='Migraine', col = colors ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAB, main='Migraine', col = c("red","blue") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAC, main='Migraine', col = c("red","green") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugBC, main='Migraine', col = c("blue","green") ,horizontal=FALSE)


library(base)
drugAB$drug <- factor(drugAB$drug)
drugAC$drug <- factor(drugAC$drug)
drugBC$drug <- factor(drugBC$drug)

par( mfrow = c(2,2 ),mai=c(0.5,0.5,0.4,0.4))
boxplot(pain ~ drug,data= migraine, main='Migraine', col = colors ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAB, main='Migraine', col = c("red","blue") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAC, main='Migraine', col = c("red","green") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugBC, main='Migraine', col = c("blue","green") ,horizontal=FALSE)
