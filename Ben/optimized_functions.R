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
