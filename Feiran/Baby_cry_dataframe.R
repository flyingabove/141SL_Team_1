Baby_cry <- read.csv("~/Desktop/Stats141SL/141SL_Team_1/Feiran/Baby_cry.csv", stringsAsFactors=FALSE)
d1 <- as.data.frame(t(Baby_cry))
names(d1)<-paste("Frame",1:160)

Names<-row.names(d1)
d2<-cbind(Names,d1)
row.names(d2)<-1:length(d2[,1])
View(d2)
