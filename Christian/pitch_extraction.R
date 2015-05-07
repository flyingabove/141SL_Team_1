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
head(s10@left)
signal<-s10@left


intervals<-ceiling((length(signal)/480))  
list_signal<-cut(signal,breaks=(480*1:intervals))
  
for(l in 1:)

Pitch<-function(signal,FrameSize){
  
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
  if (Max_Corr>VALID_CORR && Max>VALID_CORR-0.3) {
      return(Pitch_value);   #valid pitch
    }
  else {
    return(0);   
  }
  
  
}