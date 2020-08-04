library(datasets)
 
viewdata1<- datasets::ability.cov
viewdata2<- datasets::airmiles
viewdata3<- datasets::EuStockMarkets
#show table of datasets
 showall<- datasets()
 
 viewdata4<- datasets::sleep 
# showing summary of sleep and Eustockmarkets datasets
 summary(sleep)
summary(EuStockMarkets) 
plot(EuStockMarkets)
plot(sleep)
plot(sleep$extra)
plot(sleep$ID)
plot(sleep$extra, sleep$ID , type= 'p')
plot(sleep$extra, sleep$ID , type= 'b')
# histogram plot for datasets sleep and Eustockmarkets
hist(sleep$extra)
hist(EuStockMarkets)

#boxploting

boxplot(EuStockMarkets)
boxplot(sleep)
boxplot(sleep$extra , sleep$ID)
# 1 sample t test
x  <- c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(x, alternative="greater", mu=0.3)
# 2 sample t test
Control = c( 91, 87, 99, 77, 88, 91) 
Treat = c( 101, 110, 103, 93, 99, 104) 
t.test (Control, Treat, alternative="two.sided")

