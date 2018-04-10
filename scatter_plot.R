#### Basic scatterplot
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
    geom_point()

#### Custom scatterplot
library(ggplot2)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) + 
geom_point(size=6, alpha=0.6)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
geom_point(
        color="red",
        fill="blue",
        shape=21,
        alpha=0.6,
        size=6,
        stroke = 0.5)
