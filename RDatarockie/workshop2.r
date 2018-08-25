df <- msleep
complete.cases(df)
#find the rate of missing value in dataset
meandf <- mean(complete.cases(df))
missing <- 1 - meandf
print(missing)
#create function
sum2num <- function(a,b=500){
  print(a+b)
}

sum2num(20)

x <- 1:100
print(x)
sample(x,1)
sample(x,5)

roll_dices <- function() {
  dice1 = sample(1:6,1)
  dice2 = sample(1:6,2)
  total = dice1 + dice2
  print(total)
}
roll_dices()

starwars

