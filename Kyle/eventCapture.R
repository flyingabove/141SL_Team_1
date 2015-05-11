#!/usr/bin/Rscript

# cat sample_pitch/Baby_laugh01.csv | ./eventCapture.R
# I can pipe into this script

# This is only considering pitch, does loudness (amplitude) matter? Yes, it might...

options(echo=F) # echos R commands outside of the script file
args <- commandArgs(trailingOnly=F) # trailing arguments
#~ print(args)

wav <- read.table(file('stdin'), header=F, sep=" ")
#silence <- which(wav[,2]==0)
silence <- wav[,2]==0

onset <- min(which(wav[,2] != 0))

ends <- cumsum(rle(silence)$lengths)
starts <- c(1,ends[-length(ends)]+1)

# Length, 5 number summary, mean
events <- matrix(,ncol=7,nrow=0)
colnames(events) <- c('Min','1Q','Median','Mean','3Q','Max','Length')

# Fraction of a second
time.const <- 1

for(i in 1:length(rle(silence)$values))
{
    if((rle(silence)$values)[i]==T){ next }
    e.sum <- summary(wav[starts[i]:ends[i],2])
    events <- rbind(events,c(e.sum,time.const * (ends[i]-starts[i]+1)))
}

# Mathematical Morphology
# library(mmand)
# Close the dataset to eliminate stray 0's

return(events)
