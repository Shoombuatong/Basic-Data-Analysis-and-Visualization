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
