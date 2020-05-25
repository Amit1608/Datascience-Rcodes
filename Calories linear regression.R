install.packages("lattice")
library(lattice)
dotplot(caloC$`Weight`, main="Dot Plot of weight ",col="dodgerblue4")
dotplot(caloC$`CC`, main="Dot Plot of calories consumed", col="dodgerblue4")
boxplot(caloC$`Weight`,col="dodgerblue4")
boxplot(caloC$`CC`,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(caloC)
#Model building
model<- lm(Weight~CC,data =caloC)
summary(model)
#Preparing new data frame with new data
new_caloC=data.frame(CC=c(1900))
#Predict for the new data
sun1=predict(model,new_caloC)
#Print predicted value
sun1
