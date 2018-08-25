#mtcars is build-in dataset
df <- mtcars
?mtcars
install.packages('tidyverse')
library(tidyverse)
summary(df)
names(df)
dim(df)
head(df)
tail(df)
sd(df$wt)
mean(df$wt)
min(df$wt)
max(df$wt)
#head(<dataset name>,<numbers of row that display>)
head(df,3)
#<dataset name>[<row>,<column>]
#ดึงมากี่Row กี่Column
df[1:3,1:5]
df[,1:2]
#use c() for concatenate what row or column that wanna display
df[1:5,c(1,2,7)]
write.csv(df,'my_df.csv')
#correlation
cor(df$mpg,df$hp)
cor(df)
#save result
result <- cor(df)
write.csv(result,'correlation-mtcars.csv')
df <- as.tbl(df)
View(df)
df
complete.cases(df)
View(msleep)
#N/A is Missing Value
summary(msleep)
complete.cases(msleep)
#how to deal with missing value
#delete missing value row
clean_msleep <- drop_na(msleep)
print(clean_msleep)
#imputation value
print(msleep)
#summary row specific with <dataset>$<column>
summary(msleep$sleep_rem)
replace_na(msleep$sleep_rem, 1.875)
msleep$sleep_rem <- replace_na(msleep$sleep_rem, 1.875)
#install.packages('DataExplorer')
#library(DataExplorer)