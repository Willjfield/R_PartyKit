library(rpart); library(partykit)

ramphs = read.csv('/Users/willjfield/Desktop/Projects/ITP/Spring_2015/ISAW_MapDataViz/Week_3_Class/roman-amphitheaters.csv')
#Or get the latest ramphs from url
ramphs.rpart = rpart(capacity ~ quarries.nearest + freq.modcountry + elevation, method="anova", data=ramphs, na.action=na.rpart)

plot(ramphs.rpart)

text(ramphs.rpart, use.n=TRUE, all=TRUE, cex=.6)

printcp(ramphs.rpart)

plot(as.party(ramphs.rpart), type="extended")
