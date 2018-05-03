############ Set directory
library(rafalib)
library(factoextra)

setwd('D:\\Workshop')
dataset = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = dataset[,-1]

#######To remove any missing value that might be present in the data, type this:
df <- na.omit(dataset)
#######scaling/standardizing the data 
df <- scale(df)

d <- dist( df )
hc <- hclust(d)
hc

plot(hc,labels=label[,1],cex=0.5)

### Select only 100 samples
D100 = dataset[1:100,]
df <- na.omit(D100)
df <- scale(df)
d <- dist( df )
hc <- hclust(d)
hc

plot(hc,labels=label[1:100,1],cex=0.5)
plot(hc,labels=label[1:100,1],cex=0.8)

#### make color for each cluster
myplclust(hc, labels=label[1:100,1], lab.col=as.fumeric(as.character(label[1:100,2])), cex=0.8)

####Using differnt library
fviz_dend(hc, cex = 0.8, k = 5, rect = TRUE,# Cut in four groups
          k_colors = "jco",rect_border = "jco", rect_fill = TRUE)

####Plot a circular dendrogram using the option type = “circular”.
fviz_dend(hc, cex = 0.8, k = 5, 
          k_colors = "jco", type = "circular")

