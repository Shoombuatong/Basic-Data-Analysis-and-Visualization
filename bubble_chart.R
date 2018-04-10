########### plot 2 variables and dot size depends on the value of Petal.Length
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length)) +
geom_point(alpha=0.6)
 
########### plot 2 variables and dot size depends on the value of Petal.Length, while each color represents each species
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length,color=Species,)) +
 geom_point(alpha=0.6)
