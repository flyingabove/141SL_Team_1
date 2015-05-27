Baby_laughs <- read.csv("~/Desktop/Stats141SL/141SL_Team_1/Feiran/Baby_laughs.csv", stringsAsFactors=FALSE)
d1 <- as.data.frame(t(Baby_laughs))
names(d1)<-paste("Frame",1:162)

Names<-row.names(d1)
Baby_laughs_2<-cbind(Names,d1)
row.names(Baby_laughs_2)<-1:length(Baby_laughs_2[,1])
View(Baby_laughs_2)
