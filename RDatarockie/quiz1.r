roll_dices <- function() {
  dice1 = sample(1:6,1)
  dice2 = sample(1:6,2)
  total = dice1 + dice2
  print(total)
}
roll_dices()

roll_sum <- function() {
  print(sum(sample(1:6,2)))
}

roll_sum()


birthday <- function(bornyear){
  age = 2018 - bornyear
  return(age)
}
ag <- birthday(1997)
ag

