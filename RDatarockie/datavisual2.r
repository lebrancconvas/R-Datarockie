ggplot(mtcars, aes(hp,wt,color=mpg)) +
  geom_point(size=8)

ggplot(mtcars,aes(hp,wt,color=factor(am))) +
  geom_point(size=8)

mtcars$am <- factor(mtcars$am)
glimpse(mtcars)

ggplot(mtcars,
       aes(wt,mpg))

ggplot(mtcars, aes(wt,mpg,color=am))

ggplot(mtcars,aes(hp,fill=am)) + geom_density(alpha=0.5)

ggplot(mtcars,aes(hp,fill=am))

install.packages('ggtheme')

ggplot(mtcars,aes(hp,fill=am)) +
  geom_density(alpha = 0.5) +
  theme_minimal()

ggplot(mtcars,aes(hp,fill=am)) +
  geom_density(alpha = 0.5) +
  theme_minimal() +
  labs(title = "hp density",
       x = "Horse Power",
       y = "Density")

#Data Set Diamonds
diamonds
names(diamonds)
ggplot(diamonds,aes(carat,price)) + geom_point()
# if overpoint -> config alpha
ggplot(diamonds,aes(carat,price)) + geom_point(alpha = 0.1)

ggplot(diamonds,aes(carat,price)) + geom_point(alpha = 0.1) + geom_smooth()

ggplot(filter(diamonds,carat<=3),aes(carat,price)) + geom_point(alpha = 0.1) + geom_smooth()

df2 <- diamonds %>%
  filter(carat <= 3)

ggplot(df2,aes(carat,price,color=cut)) + geom_point(alpha=0.2)

ggplot(df2,aes(carat,price,color=cut)) + geom_point(alpha=0.2) + theme_minimal()

ggplot(df2,aes(carat,price,color=cut)) + 
  geom_point() +
  theme_minimal() +
  facet_wrap(~cut,ncol=2)

table(df2$cut)

ggplot(df2,aes(carat,price,color=cut)) + 
  geom_point() +
  theme_minimal() +
  facet_wrap(~cut,ncol=2) +
  scale_color_manual(values=c("red","green","blue","gold","salmon"))















































































