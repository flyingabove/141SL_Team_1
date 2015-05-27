Baby_cry <- read.csv("~/Desktop/Stats141SL/141SL_Team_1/Feiran/Baby_cry.csv", stringsAsFactors=FALSE)
d1 <- as.data.frame(t(Baby_cry))
names(d1)<-paste("Frame",1:160)

Names<-row.names(d1)
Baby_cry<-cbind(Names,d1)
row.names(Baby_cry)<-1:length(Baby_cry[,1])
View(Baby_cry)

save(Baby_cry, file="Baby_cry.Rdata")
