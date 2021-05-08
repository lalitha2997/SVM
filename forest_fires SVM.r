#importing data 
forestfires=read.csv(file.choose())
View(forestfires)
summary(forestfires)
sum(is.na(forestfires))
str(forestfires)
boxplot(forestfires)
####visuvalizaton on density plot
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$month, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for month varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$day, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for day varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$FFMC, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for FFMC varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$DMC, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for DMC varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$DC, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for DC varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$ISI, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for ISI varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$temp, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for temp varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$RH, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for RH varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$wind, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for wind varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))
##
library(ggplot2)
ggplot(data=forestfires,aes(x =forestfires$rain, fill = forestfires$size_category)) +
  geom_density(alpha = 0.9, color = 'black')+ 
  theme(panel.background = element_rect(fill = 'peachpuff'))+
  labs(title = 'forestfires data for rain varable')+
  theme(plot.title = element_text(hjust = 0.5),plot.background = 
          element_rect('aquamarine4'))

#splitting data in to test and train formate
inTraininglocal=createDataPartition(forestfires$size_category,p=.80,list = F)
train=forestfires[inTraininglocal,]
test=forestfires[-inTraininglocal,]
#building model 
library('kernlab')
library(caret)
model1=ksvm(size_category~.,data=train,kernel='vanilladot')
model1
pred_vanilla<-predict(model1,newdata=test)
mean(pred_vanilla==test$size_category)
##performing different models and getting better accuracy
model2=ksvm(size_category~.,data=train,kernel='rbfdot')
model2
pred_rbfdot<-predict(model2,newdata=test)
mean(pred_rbfdot==test$size_category)
#
model3=ksvm(size_category~.,data=train,kernel='besseldot')
model3
pred_besseldot<-predict(model3,newdata=test)
mean(pred_besseldot==test$size_category)
#
model4=ksvm(size_category~.,data=train,kernel='polydot')
model4
pred_polydot<-predict(model4,newdata=test)
mean(pred_polydot==test$size_category)
