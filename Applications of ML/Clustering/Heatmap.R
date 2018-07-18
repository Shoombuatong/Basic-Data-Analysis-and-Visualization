library(RColorBrewer) 
library(pheatmap)
setwd('D:\\Workshop')
D = read.csv("gene-expression-example.csv", header=T)
label = read.csv("labels.csv", header=T)


##### Simple heatmap
Dselect = D[1:50,1:50]
df <- Dselect[, ! apply(Dselect , 2 , function(x) sd(x) > 0.9 ) ]
nDat = (df-min(df))/(max(df)-min(df))                    
heatmap(as.matrix(nDat), scale = "none")

 ##### Adding row name                                              
row.names(nDat) = as.character(label[1:50,1])                        
heatmap(as.matrix(nDat))                        

 ##### Cluster row and column                        
library("pheatmap")
pheatmap(nDat, cluster_cols = F, cluster_rows = F)                         
pheatmap(nDat, cluster_cols = T, cluster_rows = F)
pheatmap(nDat, cluster_cols = F, cluster_rows = T)
pheatmap(nDat, cluster_cols = T, cluster_rows = T)                        

 ##### Adding space                         
pheatmap(nDat, cluster_cols = T, cluster_rows = T,  cellheight = 10, cellwidth = 20)   

##### Clustering  Row                     
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 2, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)                                                  
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_rows = 3, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)

##### Clustering  Column                              
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_cols = 2, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20)
pheatmap(nDat, cluster_cols = T, cluster_rows = T , cutree_cols = 3, gaps_row = c(10, 20, 30, 40), cellheight = 10, cellwidth = 20) 
                        
                       
