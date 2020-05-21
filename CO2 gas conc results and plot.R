library (datasets.load)

# show all contents of datasets
wsw<- datasets()
 
gaas<- datasets::CO2

summary(CO2)

CO2[ 1, c(1:5)]

plot(CO2$conc)

plot(CO2)

plot(CO2$conc, CO2$uptake)
# points and lines
plot(CO2$conc, CO2$uptake, type= "l")
plot(CO2$conc, CO2$uptake, type= "p")
plot(CO2$conc , xlab= 'conc' ,  ylab= ' uptake', main= ' total presence of co2 in air')

# histogram ploting 
hist(CO2$uptake)
#Single box plot
boxplot(CO2$conc)
boxplot(CO2$uptake)
boxplot(CO2[ ,c(1:5)] ,main= 'multiple boxplot')

