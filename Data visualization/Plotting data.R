########### Basic scatterplot
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
  
######## Histogram 
setosa = subset(iris, Species == "setosa")
versicolor = subset(iris, Species == "versicolor")
virginica = subset(iris, Species == "virginica")

hist(setosa[,1],main="Setosa ",ylab="Frequency",xlab="Sepal Length",xlab="TG",col="cyan1",breaks=20) 
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

hist(male[,10],main="TG",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20,xlim=c(0,1000),ylim=c(0,2000)) 
hist(female[,10],main=NULL,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=20,xlim=c(0,500), add=T) 

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
boxplot(pain ~ drug,data= migraine, main='Migraine', col = colors ,horizontal=FALSE)

hist(drugA[,1],main="Drug A vs. Drug B",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=10) 
hist(drugB[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=10, add=T) 

hist(drugA[,1],main="Drug A vs. Drug C",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=5) 
hist(drugC[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=5, add=T)  

hist(drugB[,1],main="Drug B vs. Drug C",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=5) 
hist(drugC[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=5, add=T) 




