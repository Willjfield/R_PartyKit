# RPart/Partykit Tutorial

ds = read.csv("http://www.math.smith.edu/r/data/help.csv")

library(rpart); library(partykit)

ds$sub = as.factor(ds$substance)

homeless.rpart = rpart(homeless ~ female + i1 + sub + sexrisk + mcs + pcs, method="class",data=ds)

plot(homeless.rpart)

text(homeless.rpart, use.n=TRUE, all=TRUE, cex=.8)

printcp(homeless.rpart)

plot(as.party(homeless.rpart), type="extended")