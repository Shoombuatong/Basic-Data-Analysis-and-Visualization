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

########################### Merge Histogram
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
D12 = rbind(setosa,versicolor)
D13 = rbind(setosa,virginica)
D23 = data.frame(versicolor,virginica)

colors12 <- c("red","blue")
colors13 <- c("red","green")
colors23 <- c("blue","green")

boxplot(Sepal.Length ~ Species,data=D12, main='Sepal Length', col = colors12 ,horizontal=FALSE)
boxplot(Sepal.Length ~ Species,data=D13, main='Sepal Width', col = colors13 ,horizontal=FALSE)
boxplot(Sepal.Length ~ Species,data=D23, main='Petal Length', col = colors23 ,horizontal=FALSE)



