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
