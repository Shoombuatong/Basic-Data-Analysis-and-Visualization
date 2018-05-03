library(RColorBrewer) 

setwd('D:\\Workshop')
D = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = D[,-1]

Dselect = dataset[1:50,1:50]
df <- Dselect[, ! apply(Dselect , 2 , function(x) sd(x) < 0.9 ) ]
nDat = scale(df)
heatmap(nDat, scale = "none")
