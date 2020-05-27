library(lattice)
# ploting of delivery and sorting time in boxplot and dotplot###

dotplot(TP$Temperature,main="Temperature" , col="red")
dotplot(TP$pressure, main="Pressure" , col="red")
boxplot(TP$Temperature,main="Temperature" , col="red")
boxplot(TP$pressure, main="Pressure" , col="red")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(TP)
#Model building
model<-lm(pressure~Temperature,data=TP)
summary(model)
#Preparing new data frame with new data
TP_N=data.frame(Temperature=c(73))
#Predict for the new data
predictpre=predict(model,TP_N)
#Print predicted value
predictpre
