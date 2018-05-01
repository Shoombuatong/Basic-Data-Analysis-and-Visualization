############ Set directory
setwd('D:\\Workshop')
dataset = read.csv("Diabetes.csv", header=T)

############ Plot decision tree
library(party)
tree = ctree(class ~., data = dataset)
plot(tree)
table(predict(tree), dataset$class)
