################################
#Full Model Building process
mileage<-read.csv("D:\\Data science classes\\Assignment R\\Cars.csv")
install.packages("car")
library(car)
#mileage<-Cars
#Scatter Plot Matrix:
pairs(mileage)

#Correlation Matrix:###
cor(mileage)

#Regression Model and Summary
model.car<-lm(MPG~.,data = mileage)
#Multi-colinearity
##install.packages("car")
library(car)
#Variance Inflation Factor
car::vif(model.car)
#Diagnostic Plots:
#Residual Plots, QQ-Plos, Std. Residuals vs Fitted
plot(model.car) 
#Residuals vs Regressors
residualPlots(model.car)
#Added Variable Plots
avPlots(model.car)
#QQ plots of studentized residuals
qqPlot(model.car)
#Deletion Diagnostics
influenceIndexPlot(model.car) # Index Plots of the influence measures

####Iteration 1 
#Remove 77th observation
mileage["HP2"] <-mileage$HP*mileage$HP
mileage["SP2"] <-mileage$SP*mileage$SP
mileage1<-mileage[-77,]
model1<-lm(MPG~.,data = mileage1)
summary(model1)

plot(model1) 
residualPlots(model1)
qqPlot(model1)
influenceIndexPlot(model1)
From Srinivas ExcelR to Everyone:  09:16 PM
#iteration2
mileage2<-mileage[-c(77,66,81,79),]

model2<-lm(MPG~.,data = mileage2[,-c(5,4)])
influenceIndexPlot(model2)
summary(model2)
