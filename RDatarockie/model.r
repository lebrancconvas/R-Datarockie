install.packages('MASS')
library(MASS)
glimpse(MASS::Boston)
## BOSTON -- Predict medv
total_n = nrow(Boston)
#Data Log by Set Seed
set.seed(123)
#Split Data
id = sample(1:total_n,0.7*total_n)
#Split into Training Set and Testing Set
train_data = Boston[id, ]
test_data = Boston[-id, ]

##Train Model
# ~ is mean "function of"
lm_model = lm(medv ~ crim + tax + black,data = train_data)
lm_model2 = lm(medv ~ ., data = train_data)

##Test Model
predicted_medv = predict(lm_model,test_data)
predicted_medv2 = predict(lm_model2,test_data)

##Root Mean Square Error
error = (test_data$medv - predicted_medv)**2
mse = mean(error)
rmse = sqrt(mse)
#rmse = sqrt(mean((actual - predict)**2))
error2 = (test_data$medv - predicted_medv2)**2
mse2 = mean(error2)
rmse2 = sqrt(mse2)
print(rmse2)
