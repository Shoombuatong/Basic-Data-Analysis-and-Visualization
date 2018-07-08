
setosa = subset(iris, Species == "setosa")
versicolor = subset(iris, Species == "versicolor")
virginica = subset(iris, Species == "virginica")

D12 = data.frame(setosa,versicolor)
D13 = data.frame(setosa,virginica)
D23 = data.frame(versicolor,virginica)

hist(setosa[,1],main="Sepal Length",ylab="Frequency",xlab="TG",col=rgb(1,0,0,0.7),breaks=20) 
hist(versicolor[,1],main=NA,ylab=NULL,xlab=NULL,col=rgb(0,0,1,0.4),breaks=20, add=T) 

