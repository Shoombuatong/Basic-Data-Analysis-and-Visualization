library(RColorBrewer) 

setwd('D:\\Workshop')
D = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = D[,-1]

##### Simple heatmap
Dselect = dataset[1:50,1:50]
df <- Dselect[, ! apply(Dselect , 2 , function(x) sd(x) < 0.9 ) ]
nDat = scale(df)
heatmap(nDat, scale = "none")

 ##### Adding row name                                              
row.names(nDat) = as.character(label[1:50,1])                        
heatmap(nDat)                        

 ##### Adding row name                         
library("pheatmap")
pheatmap(nDat, cutree_rows = 2)
pheatmap(nDat, cutree_rows = 3)
                        
                        
                        
