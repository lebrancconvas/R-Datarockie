library(tidyverse)
print(mpg)
#Set Dataframe ggplot(data=<dataset name>,mapping = aes(x=<column/row>,y=<row/column>))
ggplot(data = mpg,mapping = aes(x=cty , y=hwy))
ggplot(data = mpg,mapping = aes(x=cty , y=hwy)) + 
  geom_point() +
  #lm from Linear Regression Model
  geom_smooth(method="lm")

ggplot(mtcars, aes(hp, mpg)) +
  geom_point()

ggplot(mtcars, aes(mpg)) +
  geom_histogram(bins=15)

ggplot(mtcars, aes(mpg)) +
  geom_histogram(bins=10)

ggplot(mtcars, aes(mpg)) +
  geom_density()

ggplot(mtcars, aes(factor(am))) +
  geom_bar()

ggplot(mtcars, aes(factor(am)) + geom_bar()

       
ggplot(mtcars, aes(factor(am),mpg)) + geom_boxplot()

ggplot(mtcars, aes(factor(am),mpg)) + geom_violin()

ggplot(mtcars, aes(factor(am),mpg)) + geom_jitter()

ggplot(mtcars, aes(hp,wt)) + geom_point()

ggplot(mtcars, aes(hp,wt)+geom_point(side=5,color="blue"))                                                                                                                                                                   

       