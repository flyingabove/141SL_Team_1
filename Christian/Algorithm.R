load("Baby_cry.Rdata")
load("Baby_laughs.Rdata")
load("Baby_Neutral.Rdata")

Baby_laughs_3<-Baby_laughs_2[-162:-163]

total_baby_pitches<-rbind(Baby_cry,Baby_laughs_3,Baby_Neutral)

write.csv(total_baby_pitches,"total_baby_pitches.csv",row.names=FALSE)
total_baby_pitches<-read.csv("total_baby_pitches.csv")
?write.csv
