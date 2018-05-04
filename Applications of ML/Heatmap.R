library(RColorBrewer) 
library(pheatmap)
setwd('D:\\Workshop')
D = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = D[,-1]

##### Simple heatmap
Dselect = dataset[1:50,1:50]
df <- Dselect[, ! apply(Dselect , 2 , function(x) sd(x) < 0.9 ) ]
nDat = (df-min(df))/(max(df)-min(df))                    
heatmap(nDat, scale = "none")

 ##### Adding row name                                              
row.names(nDat) = as.character(label[1:50,1])                        
heatmap(nDat)                        

 ##### Adding row name                         
library("pheatmap")
pheatmap(nDat, cluster_cols = F, cluster_rows = F)                         
pheatmap(nDat, cluster_cols = T, cluster_rows = F)
pheatmap(nDat, cluster_cols = F, cluster_rows = T)
pheatmap(nDat, cluster_cols = T, cluster_rows = T)                        

 ##### Adding space                         
pheatmap(nDat, cluster_cols = T, cluster_rows = T,  cellheight = 10, cellwidth = 20)   

##### Clustering 
pheatmap(nDat, cutree_rows = 2,  cellheight = 10, cellwidth = 20)                        
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 2, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)                                                  
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 3, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 4, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 5, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20) 
                        
                        
