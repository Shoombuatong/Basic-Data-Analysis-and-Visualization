setwd('D:\\Workshop')
dataset = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = dataset[,-1]
