library (datasets)
# 
# data(iris)
# View(iris)
# unique(iris$Species) # unique value

## use ctrl + shift+ c you can block multiple lines
## use ctrl + L to clear the console
# x <- 9
# y <- 4**2
# z <- x+y
# print(z)

## practise
# x <- 10
# y <- 20
# result <- y-x
# print(result)

## visualization
data(mtcars)
head(mtcars,5) ## first 5 rows
# ?mtcars in the console to get the information about this dataset
#load ggplot package
library(ggplot2)

ggplot(aes(x=disp,y=mpg),data=mtcars)+geom_point()+ggtitle("displacement vs mile per gallon")

## now we use $ to access the element of this dataset
## here, as.factor() is to encoding categorical values as columns
mtcars$vs <- as.factor(mtcars$vs)
scatter <- ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + geom_boxplot(alpha=0.3) + theme(legend.position="none")
histo <- ggplot(aes(x=wt), data = mtcars)+ geom_histogram(binwidth=0.3)
## combine together
install.packages('gridExtra')
library(gridExtra)
grid.arrange(scatter, histo, ncol=2)
