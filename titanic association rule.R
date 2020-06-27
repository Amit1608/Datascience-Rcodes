#Association Rules
install.packages("arules")
library(arules)
Titanic<-read.csv("D:\\Data science classes\\Assignment R\\Titanic.csv")

Titanic<-Titanic[,-c(1)]
rules <- apriori(Titanic)
arules::inspect(rules)
rules.sorted <- sort(rules, by="lift")
arules::inspect(rules.sorted)

# rules with rhs containing "Survived" only
rules <- apriori(Titanic,parameter = list(supp=0.1, conf=0.2)
                 ,appearance = list(rhs=c("Survived=No", "Survived=Yes")
                 ),control = list(verbose=F))
arules::inspect(rules)
