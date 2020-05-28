library(lattice)
# ploting of delivery and sorting time in boxplot and dotplot###

dotplot(AD$Month,main="month" , col="red")
dotplot(AD$Passengers, main="Passengers" , col="red")
boxplot(AD$Month,main="month"  , col="red")
boxplot(AD$Passengers, main="Passengers"  , col="red")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(AD)
#Model building
model<-lm(Passengers~Month,data=AD)
summary(model)
#Preparing new data frame with new data
AD_N=data.frame(Month=c("1995-11-01"))
#Predict for the new data
predictpas=predict(model,AD_N)
#Print predicted value
predictpas

