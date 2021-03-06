library(tuneR)
s10<-readWave("Baby_cry01.wav")
head(s10@left)
signal<-s10@left

ts_signal<-ts(signal)
plot(ts_signal)

head(ts_signal,30)

#1st Attempt
signal1<-signal[signal>=0]
length(signal1)
signal2<-signal[signal<=0]
length(signal2)

#2nd Attempt
ts_signal1<-ts(signal1)
plot(ts_signal1)
length(lw_ts_signal1$y)
lw_ts_signal1<-lowess(ts_signal1)
lines(lw_ts_signal1,col="red")
str(ts_signal1)

#3rd Attempt

local_max<-function(ts_signal1_test,time_vector=0){
  n <- length(ts_signal1_test)
  CURRENT<-(ts_signal1_test[2:n] - ts_signal1_test[1:(n-1)])
  PAST<- (c(0,CURRENT[-(n-1)]) >= 0)
  CURRENT <- (CURRENT < 0)
  max.index <- which(CURRENT & PAST)
  max_ts_signal_time = (((1:n) * (time_vector==0)) + time_vector)[max.index]
  max_ts_signal_y <- ts_signal1_test[max_ts_signal_time]
  return(list(max_ts_signal_time,max_ts_signal_y))
}
local_min<-function(ts_signal1_test,time_vector=0){
  n <- length(ts_signal1_test)
  CURRENT<-(ts_signal1_test[2:n] - ts_signal1_test[1:(n-1)])
  PAST<- (c(0,CURRENT[-(n-1)]) <= 0)
  CURRENT <- (CURRENT > 0)
  max.index <- which(CURRENT & PAST)
  max_ts_signal_time = (((1:n) * (time_vector==0)) + time_vector)[max.index]
  max_ts_signal_y <- ts_signal1_test[max_ts_signal_time]
  return(list(max_ts_signal_time,max_ts_signal_y))
}


#ts_signal1_test<-ts_signal1[10000:10500]
ts_signal1_test<-ts_signal1
max_results<-local_max(ts_signal1_test,1:length(ts_signal1_test))
max_ts_signal_time<-as.numeric(unlist(max_results[1]))
max_ts_signal_y<-as.numeric(unlist(max_results[2]))
plot(ts_signal1_test)
lines(ts_signal1_test,col="blue")
points(max_ts_signal_time,max_ts_signal_y,col="red")

#4th Attempt
ts_signal2_test<-max_ts_signal_y
ts_signal2_time<-max_ts_signal_time
plot(ts_signal1_test)
lines(ts_signal2_time,ts_signal2_test,col="blue")
max_results2<-local_max(ts_signal2_test,ts_signal2_time)
max_ts_signal_time2<-as.numeric(unlist(max_results2[1]))
max_ts_signal_y2<-as.numeric(unlist(max_results2[2]))
points(max_ts_signal_time2,max_ts_signal_y2,col="red")

#5th Attempt
ts_signal3_test<-max_ts_signal_y2
ts_signal3_time<-max_ts_signal_time2
plot(ts_signal1_test)
lines(ts_signal3_time,ts_signal3_test,col="blue")
max_results3<-local_max(ts_signal3_test,ts_signal3_time)
max_ts_signal_time3<-as.numeric(unlist(max_results3[1]))
max_ts_signal_y3<-as.numeric(unlist(max_results3[2]))
points(max_ts_signal_time3,max_ts_signal_y3,col="red")

#6th Attempt
ts_signal4_test<-max_ts_signal_y3
ts_signal4_time<-max_ts_signal_time3
plot(ts_signal1_test)
lines(ts_signal4_time,ts_signal4_test,col="blue")
max_results3<-local_max(ts_signal4_test,ts_signal4_time)
max_ts_signal_time4<-as.numeric(unlist(max_results3[1]))
max_ts_signal_y4<-as.numeric(unlist(max_results3[2]))
points(max_ts_signal_time4,max_ts_signal_y4,col="red")


#7th Attempt
n=3

ts_signal1_test<-ts_signal1
max_results<-local_max(ts_signal1_test,1:length(ts_signal1_test))
max_ts_signal_time_i<-as.numeric(unlist(max_results[1]))
max_ts_signal_yi<-as.numeric(unlist(max_results[2]))

while(length(max_ts_signal_yi)>=200){
  ts_signal_i_test<-max_ts_signal_yi
  ts_signal_i_time<-max_ts_signal_time_i
  max_results_i<-local_max(ts_signal_i_test,ts_signal_i_time)
  max_ts_signal_time_i<-as.numeric(unlist(max_results_i[1]))
  max_ts_signal_yi<-as.numeric(unlist(max_results_i[2]))
}

plot(ts_signal1_test)
lines(max_ts_signal_time_i,max_ts_signal_yi,col="blue")
points(max_ts_signal_time_i,max_ts_signal_yi,col="red")
interp_signal<-approx(max_ts_signal_time_i,max_ts_signal_yi,n=1000)
lw_ts<-lowess(interp_signal,f=.15)
lines(lw_ts$x,lw_ts$y,col="yellow",lwd=8)

min_x<-local_min(lw_ts$y,lw_ts$x)[[1]]
min_y<-local_min(lw_ts$y,lw_ts$x)[[2]]

points(min_x,min_y,col="green",lwd=10)
abline(v=min_x,col="green")

#Function Definition

get_intervals<-function(ts_signal1){
  LOWESS_F=.15
  MAX_POINTS=200
  
  ts_signal1_test<-ts_signal1
  max_results<-local_max(ts_signal1_test,1:length(ts_signal1_test))
  max_ts_signal_time_i<-as.numeric(unlist(max_results[1]))
  max_ts_signal_yi<-as.numeric(unlist(max_results[2]))
  
  while(length(max_ts_signal_yi)>=200){
    ts_signal_i_test<-max_ts_signal_yi
    ts_signal_i_time<-max_ts_signal_time_i
    max_results_i<-local_max(ts_signal_i_test,ts_signal_i_time)
    max_ts_signal_time_i<-as.numeric(unlist(max_results_i[1]))
    max_ts_signal_yi<-as.numeric(unlist(max_results_i[2]))
  }
  
  plot(ts_signal1_test)
  lines(max_ts_signal_time_i,max_ts_signal_yi,col="blue")
  points(max_ts_signal_time_i,max_ts_signal_yi,col="red")
  interp_signal<-approx(max_ts_signal_time_i,max_ts_signal_yi,n=1000)
  lw_ts<-lowess(interp_signal,f=.15)
  lines(lw_ts$x,lw_ts$y,col="yellow",lwd=8)
  
  min_x<-local_min(lw_ts$y,lw_ts$x)[[1]]
  min_y<-local_min(lw_ts$y,lw_ts$x)[[2]]
  
  return(min_x[-1])
  
  
}

#Test
intervals<-get_intervals(ts_signal1)
intervals
