#install.packages("tuneR")

library(tuneR)
s10<-readWave("Baby_cry01.wav")
head(s10@left)


runif(5)

r_p_s<-function(num){
  if(num<=.33){
    return("R") 
  }
  else if (num>=.33&num<=.66){
    return("P")
  }
  else {
    return("S")
  }
}
  
  
View(sapply(runif(10),r_p_s))#good luck
