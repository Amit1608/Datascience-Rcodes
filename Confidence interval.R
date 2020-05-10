#Package for CI
install.packages("gmodels") # one time job
library(gmodels) # everytime when you want to use CI
#Data
install.packages('nycflights13')
library(nycflights13)
#Loads the data from package 'nycflights13'
flg<-nycflights13::flights
dep_delay<-flg$dep_delay
#to check NA values
is.na(dep_delay)
#Remove NA values
dep_delay1<-dep_delay[!is.na(dep_delay)]
#CI construction
ci(dep_delay1,confidence = 0.95)

flg<-nycflights13::flights
ar_delay<-flg$arr_delay
#to check NA values
is.na(ar_delay)
#Remove NA values
ar_delay1<-ar_delay[!is.na(ar_delay)]
#CI construction
ci(ar_delay1,confidence = 0.95)
