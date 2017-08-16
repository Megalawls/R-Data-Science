library(ggplot2)
data("iris")

#Line below modifies the row 120 of petal width with the function provided, just wanted to faff with R
#testdata["120",c("Petal.Width")] <- lapply(testdata["120",c("Petal.Width")], function(x) x+20)

#View(testdata)
#boxplot(Sepal.Width~Species, data=iris, xlab="Species", ylab="Sepal Width")

plot(Petal.Width~Petal.Length,
     data=iris, xlab="Petal Length",
     ylab="Petal Width",
     pch=c(2,3,4)[Species],
     col=c("red", "blue", "black")[Species])
legend("topleft",
       title="Species",
       legend=levels(iris$Species),
       col=c("red", "blue", "black"),
       pch=c(2:4))

diet1 <- subset() 