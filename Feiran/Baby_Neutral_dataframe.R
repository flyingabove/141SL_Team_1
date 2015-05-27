Baby_Neutral <- read.csv("~/Desktop/Stats141SL/141SL_Team_1/Christian/DataFiles/Baby_Neutral.csv", stringsAsFactors=FALSE)
d1 <- as.data.frame(t(Baby_Neutral))
names(d1)<-paste("Frame",1:160)

Names<-row.names(d1)
Baby_Neutral<-cbind(Names,d1)
row.names(Baby_Neutral)<-1:length(Baby_Neutral[,1])
View(Baby_Neutral)
save(Baby_Neutral, file="Baby_Neutral.Rdata")
