library(tuneR)

#Functions
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
local_max<-function(ts_signal1_test,time_vector=0){
  max_ts_signal_time<-NULL
  max_ts_signal_y<-NULL
  CURRENT<-0
  PAST<-0
  for(i in 1:(length(ts_signal1_test)-1)){
    t1<-ts_signal1_test[i]
    t2<-ts_signal1_test[i+1]
    CURRENT<-t2-t1
    print(i)
    if((CURRENT<0)&(PAST>=0)){
      if(time_vector==0) max_ts_signal_time=c(max_ts_signal_time,i)
      if(time_vector!=0) max_ts_signal_time=c(max_ts_signal_time,time_vector[i])
      max_ts_signal_y=c(max_ts_signal_y,t1)
    }
    PAST<-CURRENT
  }
  return(list(max_ts_signal_time,max_ts_signal_y))
}
local_min<-function(ts_signal1_test,time_vector=0){
  min_ts_signal_time<-NULL
  min_ts_signal_y<-NULL
  CURRENT<-0
  PAST<-0
  for(i in 1:(length(ts_signal1_test)-1)){
    t1<-ts_signal1_test[i]
    t2<-ts_signal1_test[i+1]
    CURRENT<-t2-t1
    print(i)
    if((CURRENT>0)&(PAST<=0)){
      if(time_vector==0) min_ts_signal_time=c(min_ts_signal_time,i)
      if(time_vector!=0) min_ts_signal_time=c(min_ts_signal_time,time_vector[i])
      min_ts_signal_y=c(min_ts_signal_y,t1)
    }
    PAST<-CURRENT
  }
  return(list(min_ts_signal_time,min_ts_signal_y))
}

#Test
intervals<-get_intervals(ts_signal1)
intervals

#ORGANIZATION FUNCTION

WAV_list<-c("Baby_cry01.wav","Baby_cry01.wav")

training_generator<-function(WAV_list){
  list_training<-NULL
  
  for(i in 1:length(WAV_list)){
    s10<-readWave(WAV_list[i])
    head(s10@left)
    signal<-s10@left
    ts_signal<-ts(signal)
    #Positive and Negative
    signal1<-signal[signal>=0]
    
    #make positive time series
    ts_signal1<-ts(signal1)
    WAV_intervals<-get_intervals(signal1)
    
    list_training<-c(list_training,list(list(signal1,c(0,WAV_intervals,length(signal1)),c("LOW","NOPITCH","HIGH"))))
  }
  return(list_training)
}

list_training<-training_generator(WAV_list)
str(list_training)

