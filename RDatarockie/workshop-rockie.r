#get working directory
getwd()
#File Lists in Directory
dir()
#basic calculation
100 + 200
10*2
10-2
10/2
#Variables Assignment
#use arrow like this
money <- 10000
expense <- 8000
left <- money - expense
transport <- 1000
#rm(variable) -> remove variable from environment
rm(transport)
print(left)
#vector 
vec1 <- c(12,23,34)
#class(<vector variable>) check data type of vector.
class(vec1)
#length(<vector variable>) tells us how many value in vector.
length(vec1)
y <- c("Hello","World")
class(y)
z <- c(TRUE,FALSE,T,F)
print(z)
