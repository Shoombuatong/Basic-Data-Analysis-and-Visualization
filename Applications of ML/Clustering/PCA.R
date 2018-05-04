library(FactoMineR)
setwd('D:\\Workshop')
dataset = read.csv("gene-expression.csv", header=T)
label = read.csv("labels.csv", header=T)
dataset = dataset[,-1]

res.pca <- PCA(dataset)

write.csv(res.pca$eig, "eig_gene.csv", row.names=TRUE, na="")
write.csv(res.pca$var$coord, "loading_gene.csv", row.names=TRUE, na="")
write.csv(res.pca$ind$coord, "score_gene.csv", row.names=FALSE, na="")


#################### Label points in this scatterplot

score_plot = read.csv("score_gene.csv", header = TRUE)

plot(score_plot[,1], score_plot[,2], main= NULL, xlab= "PC1(10.53%)",ylab= "PC2(8.75%)", pch=19,
col=score_plot[,6])

legend('topright', legend = levels(score_plot[,6]), col = 1:3, cex = 1, pch = 19)

#################### Label points with fixing a color for each group
plot(Dim.1 ~ Dim.2, score_plot, main= NULL,xlab = 'PC1 (12.34%)' ,ylab = 'PC2 (8.79%)', type = "n",pch=16, lwd =4,
cex = 2)

data1 = subset(score_plot, Class == 'BRCA')
points(data1[,1], data1[,2], col = "red",pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'COAD')
points(data1[,1], data1[,2], col = "blue",pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'KIRC')
points(data1[,1], data1[,2], col = "green",pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'LUAD')
points(data1[,1], data1[,2], col = "yellow",pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'PRAD')
points(data1[,1], data1[,2], col = "grey",pch=16, lwd =2,cex = 1.5)  

legend('topright', legend=c("BRCA", "COAD", "KIRA", "LUAD", "PRAD"),
       col=c("red", "blue","green","yellow", "grey"), cex = 1, pch = 19)

#################### Label points with density of color
Myred <- rgb(t(col2rgb("red")), alpha=150, maxColorValue=300)
Myblue <- rgb(t(col2rgb("blue")), alpha=150, maxColorValue=300)
Mygreen <- rgb(t(col2rgb("green")), alpha=150, maxColorValue=300)
Myyellow <- rgb(t(col2rgb("yellow")), alpha=150, maxColorValue=300)
Mygrey <- rgb(t(col2rgb("grey")), alpha=150, maxColorValue=300)

plot(Dim.1 ~ Dim.2, score_plot, main= NULL,xlab = 'PC1 (12.34%)' ,ylab = 'PC2 (8.79%)', type = "n",pch=16, lwd =4,
cex = 2)

data1 = subset(score_plot, Class == 'BRCA')
points(data1[,1], data1[,2], col = Myred,pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'COAD')
points(data1[,1], data1[,2], col = Myblue,pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'KIRC')
points(data1[,1], data1[,2], col = Mygreen,pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'LUAD')
points(data1[,1], data1[,2], col = Myyellow,pch=16, lwd =2,cex = 1.5)  
data1 = subset(score_plot, Class == 'PRAD')
points(data1[,1], data1[,2], col = Mygrey,pch=16, lwd =2,cex = 1.5)  

legend('topright', legend=c("BRCA", "COAD", "KIRA", "LUAD", "PRAD"),
       col=c("red", "blue","green","yellow", "grey"), cex = 1, pch = 19)

