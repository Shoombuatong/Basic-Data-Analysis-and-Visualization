
########### Buble plot
ggplot(data, aes(x=carat, y=price)) +
  geom_point()
 
# Now we see there is a link between caract and price
# But what if we want to know about depth in the same time?
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length)) +
  geom_point(alpha=0.2)
 

library(ggplot2)
library(plotly)
library(gapminder)
 
ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Petal.Length)) +
 geom_point(alpha=0.2)


ggplot( iris, aes(x=Sepal.Length, y=Sepal.Width,size=Species)) +
 geom_point(alpha=0.2) +
  scale_size_continuous(range = c(0.5, 16))
  
  
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species, shape=Species)) +
    geom_point(size=6, alpha=0.6)
