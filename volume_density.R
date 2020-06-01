library(lattice)
# ploting of delivery and sorting time in boxplot and dotplot###

dotplot(VD$Volume,main="Volume" , col="red")
dotplot(VD$density, main="density" , col="red")
boxplot(VD$Volume,main="Volume" , col="red")
boxplot(VD$density, main="density" , col="red")

#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
#column names
colnames(VD)
#Model building
model<-lm(density~Volume,data=VD)
summary(model)
#Preparing new data frame with new data
VD_N=data.frame(Volume=c(73))
#Predict for the new data
predictpre=predict(model,VD_N)
#Print predicted value
predictpre
