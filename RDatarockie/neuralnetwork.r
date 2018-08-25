View(iris)
glimpse(iris)
table(iris)
table(iris$Species)
total_n = nrow(iris)
#Data Log by Set Seed
set.seed(123)
#Split Data
id = sample(1:total_n,0.7*total_n)
#Split into Training Set and Testing Set
train_data = iris[id, ]
test_data = iris[-id, ]

##Train Model
set.seed(123)
nn_model = nnet(Species ~ ., data = train_data, size = 4)

##Plot Graph
plotnet(nn_model)

##Test Model
predicted_species = predict(nn_model,test_data,type='class')
