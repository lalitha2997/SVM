#importing the data set
trainsalary=read.csv(file.choose())
View(trainsalary)
summary(trainsalary)
str(trainsalary)
plot(trainsalary)
boxplot(trainsalary)
sum(is.na(trainsalary))
####visuvalization on train dataset
library(ggplot2)
ggplot(data=trainsalary,aes(x =trainsalary$age, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for age variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=trainsalary,aes(x =trainsalary$workclass, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for workclass variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=trainsalary,aes(x =trainsalary$education, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for education variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=trainsalary,aes(x =trainsalary$educationno, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for educationno variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$maritalstatus, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for maritalsatatus variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$occupation, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for occupation variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$relationship, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for relationship variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$race, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for race variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$sex, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for sex variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$capitalgain, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for capitalgain variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=trainsalary,aes(x =trainsalary$capitalloss, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for capitalloss variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$hoursperweek, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for hoursperweek variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$native, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for native variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=trainsalary,aes(x =trainsalary$Salary, fill = trainsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'trainsalary data for salary variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##importing test data
testsalary=read.csv(file.choose())
View(testsalary)
summary(testsalary)
str(testsalary)
plot(testsalary)
boxplot(testsalary)
sum(is.na(testsalary))
####
####visuvalization on test dataset
library(ggplot2)
ggplot(data=testsalary,aes(x =testsalary$age, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for age variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=testsalary,aes(x =testsalary$workclass, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for workclass variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=testsalary,aes(x =testsalary$education, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for education variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=testsalary,aes(x =testsalary$educationno, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for educationno variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$maritalstatus, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for maritalsatatus variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$occupation, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for occupation variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$relationship, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for relationship variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$race, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for race variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$sex, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for sex variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$capitalgain, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for capitalgain variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
###
ggplot(data=testsalary,aes(x =testsalary$capitalloss, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for capitalloss variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$hoursperweek, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for hoursperweek variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$native, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for native variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
ggplot(data=testsalary,aes(x =testsalary$Salary, fill = testsalary$Salary)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'testsalary data for salary variable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))

#importing librarys 
library('kernlab')
library(caret)
#building model
model1=ksvm(Salary~.,data=trainsalary,kernel='vanilladot')
model1
pred_vanilla<-predict(model1,newdata=testsalary)
mean(pred_vanilla==testsalary$Salary)
##performing different models and getting better accuracy
model2=ksvm(Salary~.,data=trainsalary,kernel='rbfdot')
model2
pred_rbfdot<-predict(model2,newdata=testsalary)
mean(pred_rbfdot==testsalary$Salary)
#
model3=ksvm(Salary~.,data=trainsalary,kernel='besseldot')
model3
pred_besseldot<-predict(model3,newdata=testsalary)
mean(pred_besseldot==testsalary$Salary)
#
model4=ksvm(Salary~.,data=trainsalary,kernel='polydot')
model4
pred_polydot<-predict(model4,newdata=testsalary)
mean(pred_polydot==testsalary$Salary)
