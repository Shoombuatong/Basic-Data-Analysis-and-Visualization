library( factoextra)
library( digest)
library( tidyverse)
library( cluster)
library( purrr)

setwd('D:\\Workshop')
D = read.csv("gene-expression-example.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = D[,-1]

##### Simple heatmap
Dselect = dataset[1:50,1:50]
Dselect = dataset[1:50,1:50]
df <- Dselect[, ! apply(Dselect , 2 , function(x) sd(x) < 0.9 ) ]
nDat = (df-min(df))/(max(df)-min(df))  

##### 
km <- kmeans(nDat, centers=5)
fviz_cluster(km, data = nDat)

#### Assuming we do not know how many groups of dataset
k2 <- kmeans(df, centers = 2)
k3 <- kmeans(df, centers = 3)
k4 <- kmeans(df, centers = 4)
k5 <- kmeans(df, centers = 5)

# plots to compare
p1 <- fviz_cluster(k2, geom = "point", data = df) + ggtitle("k = 2")
p2 <- fviz_cluster(k3, geom = "point",  data = df) + ggtitle("k = 3")
p3 <- fviz_cluster(k4, geom = "point",  data = df) + ggtitle("k = 4")
p4 <- fviz_cluster(k5, geom = "point",  data = df) + ggtitle("k = 5")

library(gridExtra)
grid.arrange(p1, p2, p3, p4, nrow = 2)

####Determining Optimal Clusters
# function to compute total within-cluster sum of square 
avg_sil <- function(k) {
  km.res <- kmeans(df, centers = k, nstart = 25)
  ss <- silhouette(km.res$cluster, dist(df))
  mean(ss[, 3])
}

# Compute and plot wss for k = 2 to k = 15
k.values <- 2:15

# extract avg silhouette for 2-15 clusters
avg_sil_values <- map_dbl(k.values, avg_sil)

plot(k.values, avg_sil_values,
       type = "b", pch = 19, frame = FALSE, xlim = c(1,15), ylim = c(0,0.4),
       xlab = "Number of clusters K",
       ylab = "Average Silhouettes")       
              
