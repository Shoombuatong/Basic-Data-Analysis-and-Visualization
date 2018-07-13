########### Basic Scatterplot
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
    geom_point()

#### Set dot size and intensive color
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
geom_point(size=6, alpha=0.6)

#### Set dot color and other parameters
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
geom_point(
        color="red",
        fill="blue",
        shape=21,
        alpha=0.6,
        size=6,
        stroke = 0.5)
        
########### Exercise for Scatterplot
ggplot(iris, aes(x= any , y= any)) + 
    geom_point() 

########### Bubble_chart
########### plot 2 variables and dot size depends on the value of Petal.Length
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length)) +
geom_point(alpha=0.6)
 
########### Set color representing each species
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length,color=Species)) +
 geom_point(alpha=0.6)

########### Set range of dot size
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length,color=Species)) +
 geom_point(alpha=0.6) +
  scale_size_continuous( trans="exp", range=c(4, 25))

########### Set white background
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length,color=Species)) +
 geom_point(alpha=0.6) +
  scale_size_continuous( trans="exp", range=c(4, 25))+
theme_bw() 

########### Set legend
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length,color=Species)) +
 geom_point(alpha=0.6) +
  scale_size_continuous( trans="exp", range=c(5, 20)) +
  theme_bw() +
  theme(
    text = element_text(size=13),
    legend.justification = c("right", "bottom"),
    panel.border = element_blank()
  )

########### Exercise for Bubble_chart
ggplot(iris, aes(x= any, y= any,size= any)) 


######## Histogram 
setosa = subset(iris, Species == "setosa")
versicolor = subset(iris, Species == "versicolor")
virginica = subset(iris, Species == "virginica")

hist(setosa[,1],main="Setosa ",ylab="Frequency",xlab="Sepal Length",col="cyan1",breaks=20) 
hist(setosa[,1],main="Setosa ",ylab="Frequency",xlab="Sepal Length",col="cyan1",breaks=20,xlim=c(4,8),ylim=c(0,20))

hist(setosa[,2],main="Setosa ",ylab="Frequency",xlab="Sepal Width",col="cyan1",breaks=20) 
hist(setosa[,3],main="Setosa ",ylab="Frequency",xlab="Petal Length",col="cyan1",breaks=20) 
hist(setosa[,4],main="Setosa ",ylab="Frequency",xlab="Petal Width",col="cyan1",breaks=20) 

par( mfrow = c(2,2 ),mai=c(0.7,0.7,0.3,0.3))
hist(setosa[,1],main="Setosa",ylab="Frequency",xlab="Sepal Length",col="cyan1",breaks=20,xlim=c(4,8),ylim=c(0,20))
hist(setosa[,2],main="Setosa",ylab="Frequency",xlab="Sepal Width",col="cyan1",breaks=20) 
hist(setosa[,3],main="Setosa",ylab="Frequency",xlab="Petal Length",col="cyan1",breaks=20) 
hist(setosa[,4],main="Setosa",ylab="Frequency",xlab="Petal Width",col="cyan1",breaks=20) 

par( mfrow = c(2,2 ),mai=c(0.5,0.5,0.4,0.4))
hist(setosa[,1],main=NA,ylab="Frequency",xlab="Sepal Length",col="cyan1",breaks=20,xlim=c(4,8),ylim=c(0,20))
hist(setosa[,2],main=NA,ylab="Frequency",xlab="Sepal Width",col="cyan1",breaks=20) 
hist(setosa[,3],main=NA,ylab="Frequency",xlab="Petal Length",col="cyan1",breaks=20) 
hist(setosa[,4],main=NA,ylab="Frequency",xlab="Petal Width",col="cyan1",breaks=20) 
mtext("Setosa", side = 3, line = -2, outer = TRUE,cex = 1.5)

par( mfrow = c(2,2 ),mai=c(0.5,0.5,0.4,0.4))
hist(setosa[,1],main=NA,ylab="Frequency",xlab="Sepal Length",col="cyan1",breaks=20,xlim=c(4,8),ylim=c(0,20))
hist(setosa[,2],main=NA,ylab="Frequency",xlab="Sepal Width",col="cyan1",breaks=20) 
hist(setosa[,3],main=NA,ylab="Frequency",xlab="Petal Length",col="cyan1",breaks=20) 
hist(setosa[,4],main=NA,ylab="Frequency",xlab="Petal Width",col="cyan1",breaks=20) 
mtext("Setosa", side = 3, line = -18, outer = TRUE,cex = 1.5)

########################### Merge Histogram
hist(setosa[,1],main="Sepal Length",ylab="Frequency",xlab="TG",col="springgreen1",breaks=20) 
hist(versicolor[,1],main=NA,ylab=NULL,xlab=NULL,col="blue",breaks=20, add=T) 

hist(setosa[,2],main="Sepal Width",ylab="Frequency",xlab="TG",col="springgreen1",breaks=20) 
hist(versicolor[,2],main=NA,ylab=NULL,xlab=NULL,col="blue",breaks=10, add=T) 

hist(setosa[,3],main="Petal Length",ylab="Frequency",xlab="TG",col="springgreen1",breaks=20,xlim=c(0,5)) 
hist(versicolor[,3],main=NA,ylab=NULL,xlab=NULL,col="blue",breaks=20, add=T) 

hist(setosa[,4],main="Petal Width",ylab="Frequency",xlab="TG",col="springgreen1",breaks=5,xlim=c(0,2)) 
hist(versicolor[,4],main=NA,ylab=NULL,xlab=NULL,col="blue",breaks=5, add=T) 

legend("topright", inset=.05, title=NULL,
  c("setosa","versicolor"), col=c("springgreen1","blue"), pch=15)

########################### Merge Histogram (Overlapping colors)
hist(setosa[,1],main="Sepal Length",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20) 
hist(versicolor[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=20, add=T) 

hist(setosa[,2],main="Sepal Width",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20) 
hist(versicolor[,2],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=10, add=T) 

hist(setosa[,3],main="Petal Length",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20,xlim=c(0,5)) 
hist(versicolor[,3],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=20, add=T) 

hist(setosa[,4],main="Petal Width",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=5,xlim=c(0,2)) 
hist(versicolor[,4],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=5, add=T) 

legend("topright", inset=.05, title=NULL,
  c("setosa","versicolor","overlap"), col=c(rgb(1,0,0,0.7),rgb(0,0,1,0.4),"purple"), pch=15)

########### Exercise for Histogram
hist(setosa[,1],main="Sepal Length",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20) 
hist(virginica[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=20, add=T) 


########################### Boxplot
colors <- c("red","blue","green")
boxplot(Sepal.Length ~ Species,data=iris, main='Sepal Length', col = colors ,horizontal=FALSE)
boxplot(Sepal.Width ~ Species,data=iris, main='Sepal Width', col = colors ,horizontal=FALSE)
boxplot(Petal.Length ~ Species,data=iris, main='Petal Length', col = colors ,horizontal=FALSE)
boxplot(Petal.Width ~ Species,data=iris, main='Petal Width', col = colors ,horizontal=FALSE)

########################### multiplot
pain = c(4, 5, 4, 3, 2, 4, 3, 4, 4, 6, 8, 4, 5, 4, 6, 5, 8, 6, 6, 7, 6, 6, 7, 5, 6, 5, 5)
drug = c(rep("A",9), rep("B",9), rep("C",9))
migraine = data.frame(pain,drug)
boxplot(pain ~ drug,data= migraine, main='Migraine', col = colors ,horizontal=FALSE)

drugA  = subset(migraine, drug == "A")
drugB  = subset(migraine, drug == "B")
drugC  = subset(migraine, drug == "C")

par( mfrow = c(2,2 ),mai=c(0.5,0.5,0.4,0.4))
hist(drugA[,1],main="Drug A vs. Drug B",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=10) 
hist(drugB[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=10, add=T) 

hist(drugA[,1],main="Drug A vs. Drug C",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=5) 
hist(drugC[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=5, add=T)  

hist(drugB[,1],main="Drug B vs. Drug C",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=5) 
hist(drugC[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=5, add=T) 

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
boxplot(pain ~ drug,data= migraine, main='A vs B vs C', col = colors ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAB, main='A vs B', col = c("red","blue") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugAC, main='A vs C', col = c("red","green") ,horizontal=FALSE)
boxplot(pain ~ drug,data= drugBC, main='B vs C', col = c("blue","green") ,horizontal=FALSE)
