

##############################
#Feature Extraction Algorithm#
##############################

feature_extraction<-function(){
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

}
points(min_x,min_y,col="green",lwd=10)
abline(v=min_x,col="green")