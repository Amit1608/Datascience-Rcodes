install.packages('factoextra')
library(factoextra)
#Universities<-read.csv("D:\Data science classes\Assignment R")

# Elbow method

fviz_nbclust(Universities[,-1], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

###Cluster algorithm building
km <- kmeans(Universities[,-1],4) 
km$centers
km$cluster
clust<-data.frame("University"=Universities[,1],"cluster"=km$cluster)

##Animation
install.packages("animation")
library(animation)
km <- kmeans.ani(Universities[,-c(1)], 4)
