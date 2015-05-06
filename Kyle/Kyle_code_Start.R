#install.packages("tuneR")
#library(tuneR)
#s10<-readWave("Baby_cry01.wav")
#head(s10@left)

# Requires "aubio" installed at a system level
# http://aubio.org/documentation

fpitch <- 'aubiopitch' # bash for getting the time series pitch

# BASH implementation of listing files
ffind <- 'find ./ -name \'*.wav\'' # bash for listing all wav files in subdirectories
wav.list <- system(ffind,intern=T)

# R implementation of listing files
#wav.list <- list.files(pattern='*.wav',recursive=T)

# Loop attempt and apply attempt at getting frequency info for all the sounds
sounds <- matrix(0,10000,length(wav.list))
for (i in 1:length(wav.list))
    { sounds[,i] <- system(paste(fpitch, wav.list[i],sep=' '),intern=T) }
#sounds <- sapply(wav.list, function(x) print(paste(fpitch, x,sep=' '),intern=T))


# intern=T is what allows output from the system command to be stored as a variable
