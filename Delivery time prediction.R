library(lattice)
# ploting of delivery and sorting time in boxplot and dotplot###

dotplot(DT$Delivery_Time,main="Delivery time" , col="red")
dotplot(DT$Sorting_Time, main="Sorting time" , col="red")
boxplot(DT$Delivery_Time,main="Delivery time" , col="red")
boxplot(DT$Sorting_Time, main="Sorting time" , col="red")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(DT)
#Model building
model<-lm(Delivery_Time~Sorting_Time,data=DT)
summary(model)
#Preparing new data frame with new data
DT_prediction=data.frame(Sorting_Time=c(3.6))
#Predict for the new data
predicttime1=predict(model,DT_prediction)
#Print predicted value
predicttime1
