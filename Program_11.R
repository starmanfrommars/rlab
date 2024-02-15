setwd("D:/4CB22CG009")
dataset = read.csv('Salary_Data.csv')
View(dataset)

install.packages("caTools")
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary, SplitRatio = 2/3)
training_set = subset(dataset, split==TRUE)
test_set = subset(dataset, split == FALSE)
View(training_set)

regressor = lm(formula = Salary~YearsExperience, data = training_set)
regressor
?lm()
y_pred = predict(regressor, newdata=test_set)
test_set
y_pred

library(ggplot2)
ggplot()+
  geom_point(aes(x= training_set$YearsExperience, y=training_set$Salary),colour = 'red')+
  geom_line(aes(x=training_set$YearsExperience,y=predict(regressor, newdata = training_set)),color='blue')+
  ggtitle('Salary vs Experience(Training Set)')+
  xlab('Years of Experience')+
  ylab('Salary')

ggplot()+
  geom_point(aes(x= test_set$YearsExperience, y=test_set$Salary),colour = 'red')+
  geom_line(aes(x=training_set$YearsExperience,y=predict(regressor, newdata = training_set)),color='blue')+
  ggtitle('Salary vs Experience(Training Set)')+
  xlab('Years of Experience')+
  ylab('Salary')

ggplot()+
  geom_point(aes(x = y_pred,y = test_set$Salary),colour = 'red')+
  ggtitle('Comparison of actual and predicted values')+
  xlab('Predictions')+
  ylab('Values')

