df<- data.frame(x=c(1,3,4),y=c("a","b","c"))
df[1,1 ]
df[3, ]
df[c(1,3),c(1)]
df[c(1,3),c(1,2)]
df[c(1,3),c(2)]  
library (datasets)
air<- datasets::airquality
head(airquality)
tail(airquality)
airquality[ ,c(1,2)]
airquality$Month
airquality$Wind
airquality$Temp
summary(airquality$Temp)
summary(airquality)
plot(airquality$Ozone)
plot(airquality$Temp,airquality$Ozone)
plot(airquality)
# points and lines 
plot(airquality$Ozone, type= "l") # p: points, l: lines,b: both
plot(airquality$Ozone, xlab = 'ozone Concentration', 
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')


# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col= 'blue',horiz = F)
#Histogram
hist(airquality$Temp)
hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
boxplot(airquality$Wind)

# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

e_quakes<-datasets::quakes

head(quakes)
tail(quakes)
summary(quakes$mag)
summary(quakes)

# points and lines 
plot(quakes$long , type="l")
plot(quakes$long , type="p")
# p: points, l: lines,b: both
plot(quakes$mag , type="b")

plot(quakes$mag , xlab= "nos. of repetation " , ylab = "intensity" , col = "red")

#Histogram
hist(quakes$mag)
hist(quakes$mag, 
     main = 'earthquake magnitude',
     xlab = 'mag.', col='blue')

#Single box plot
boxplot(quakes$mag)

# Multiple box plots
boxplot(quakes[,1:4],main='parameters of quakes')

