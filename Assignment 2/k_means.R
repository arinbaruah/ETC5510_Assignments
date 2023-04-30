library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)
library(plotly)
library(caTools)
library(Amelia)
library(forcats)
library(ISLR)
library(rpart) #For decision tree
library(rpart.plot)
library(randomForest)
library(e1071) #For SVM
library(cluster)

pl<-ggplot(iris,aes(Petal.Length,Petal.Width,color=Species))
pl<-pl+geom_point(size=4)
print(pl)

set.seed(101)
irisCluster<-kmeans(iris[,1:4],3,nstart=20)  #K=3 

clus.plot<-clusplot(iris,irisCluster$cluster,color=T,shade=T,labels=0,lines=0)
print(clus.plot)

