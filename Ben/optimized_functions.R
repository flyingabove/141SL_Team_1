local_max<-function(ts_signal1_test,time_vector=0){
  max_ts_signal_time <- c()
  max_ts_signal_y<- c()
  CURRENT<-0
  PAST<-0
  for(i in 1:(length(ts_signal1_test)-1)){
    t1<-ts_signal1_test[i]
    t2<-ts_signal1_test[i+1]
    CURRENT<-t2-t1
    if((CURRENT<0)&(PAST>=0)){
      if(time_vector==0) max_ts_signal_time[i] = i
      if(time_vector!=0) max_ts_signal_time[i] = time_vector[i]
      max_ts_signal_y[i] = t1
    }
    PAST<-CURRENT
  }
  max_ts_signal_time <- max_ts_signal_time[!is.na(max_ts_signal_time)]
  max_ts_signal_y <- max_ts_signal_y[!is.na(max_ts_signal_y)]
  return(list(max_ts_signal_time,max_ts_signal_y))
}

local_min <- function(ts_signal1_test,time_vector=0){
  min_ts_signal_time <- c()
  min_ts_signal_y <- c()
  CURRENT<-0
  PAST<-0
  for(i in 1:(length(ts_signal1_test)-1)){
    t1<-ts_signal1_test[i]
    t2<-ts_signal1_test[i+1]
    CURRENT<-t2-t1
    if((CURRENT>0)&(PAST<=0)){
      if(time_vector==0) min_ts_signal_time[i] <- i
      if(time_vector!=0) min_ts_signal_time[i] <- time_vector[i]
      min_ts_signal_y[i] <- t1
    }
    PAST<-CURRENT
  }
  min_ts_signal_time <- min_ts_signal_time[!is.na(min_ts_signal_time)]
  min_ts_signal_y <- min_ts_signal_y[!is.na(min_ts_signal_y)]
  return(list(min_ts_signal_time,min_ts_signal_y))
}