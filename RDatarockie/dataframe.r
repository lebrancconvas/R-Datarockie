names <- c('Shotaro','Eiji','Gentaro')
ages <- c(27,23,17)
student <- c(F,F,T)

names
ages
student

data.frame(names,ages,student)
da <- data.frame(names,ages,student)
df <- read.csv('flights.csv')
