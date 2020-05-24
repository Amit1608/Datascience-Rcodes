install.packages("lattice")
library(lattice)
dotplot(AT$AT, main="Dot Plot of Adipose tissue ",col="dodgerblue4")
dotplot(AT$waist, main="Dot Plot of wasit circumference", col="dodgerblue4")
boxplot(AT$AT,col="dodgerblue4")
boxplot(AT$Waist,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(AT)
#Model building
model<- lm(AT~Waist,data =AT)
summary(model)
#Preparing new data frame with new data
new_AT=data.frame(Waist=c(40,75,400))
#Predict for the new data
sun1=predict(model,new_AT)
#Print predicted value
sun1
