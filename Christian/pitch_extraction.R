##################
#Pitch Extraction#
##################

PRINTOUT<-c()
SAMPLING_RATE<-48000
MIN_PITCH<-40
MAX_PITCH<-720
FRAME_SIZE<-480
VALID_CORR<-0.7
FrameSize<-480

library(tuneR)
s10<-readWave("Baby_cry01.wav")
?readWave
head(s10@left)
signal<-s10@left
tail(signal,1000)

range(signal)

pitches<-get_pitches(signal)

get_pitches<-function(signal){
  FRAME_SIZE<-480
  
  intervals<-c(1,480*1:ceiling((length(signal)/480)))
  
  list_of_frames<-my_cut(signal,intervals)
    
  pitches<-1:length(list_of_frames)
  
  for(i in 1:length(list_of_frames)){
    pitches[i]<-Pitch(as.numeric(list_of_frames[[i]]),FRAME_SIZE)
    print(pitches[i])
  }
  
  
}

my_cut<-function(signal,intervals){
  
  list_vectors<-list()
  
  for(i in 1:(length(intervals)-1)){
    vector<-signal[intervals[i]:intervals[i+1]]
    list_vectors[[i]]<-vector
  }
  
  return(list_vectors)
}

Pitch<-function(signal,FrameSize){
  
  SAMPLING_RATE<-48000
  MIN_PITCH<-40
  MAX_PITCH<-720
  FRAME_SIZE<-480
  VALID_CORR<-0.7
  
  buffer<-rep(1,MAX_PITCH + FRAME_SIZE)
  Correlation_sm<-rep(0,MAX_PITCH +1)
  First_Flag<-TRUE
  k<-integer();Pitch_value<-integer();
  Correlation<-double(); Energy1<-double(); Energy2<-double(); Max_Corr<-double(); Max<-double();
 
  #buffer[1:MAX_PITCH]<-buffer[MAX_PITCH:FrameSize]
  buffer[MAX_PITCH:FrameSize]<-signal
  
  #Calculate Correlation
  Max_Corr=0;
  
  for(k in MIN_PITCH:MAX_PITCH){
    
    ptr1 = buffer+MAX_PITCH;
    ptr2 = ptr1 - k;
    Correlation=0;
    Energy1 =0;
    Energy2 =0;
    
    for (i in 1:FrameSize) {
      Correlation = Correlation+ptr1[i]*ptr2[i];
      Energy1 = Energy1+ptr1[i]*ptr1[i];
      Energy2 = Energy2+ptr2[i]*ptr2[i];
    }
  }
  Correlation = Correlation/sqrt(Energy1*Energy2+0.000001);
  if (Correlation>Max_Corr) Max_Corr=Correlation;
  
  if (Correlation>VALID_CORR) { #smoothing correlations
                                Correlation_sm[k] = 0.95*Correlation_sm[k] + 0.05*Correlation;
  }
  
  #search for pitch and maximum correlation 
  Max = -1;
  Pitch_value=0;
  
  Max<-max(Correlation_sm)
  Pitch_value<-which(Correlation_sm==max(Correlation_sm))
  
  
#Return pitch 
  if ((Max_Corr>VALID_CORR )& (Max>(VALID_CORR-0.3))) {
      return(Pitch_value);   #valid pitch
    }
  else {
    return(0);   
  }
  
  
}
