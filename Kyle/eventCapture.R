#!/usr/bin/Rscript

# Length, 5 number summary, mean
events <- matrix(,ncol=8,nrow=0)
colnames(events) <- c('File.Name','Min','1Q','Median','Mean','3Q','Max','Length')

for (f in list.files(pattern='*.csv'))
{
    wav <- read.table(f, header=F, sep=" ")
    silence <- wav[,2]==0

    onset <- min(which(wav[,2] != 0))

    ends <- cumsum(rle(silence)$lengths)
    starts <- c(1,ends[-length(ends)]+1)

    # Fraction of a second
    time.const <- 1

    for(i in 1:length(rle(silence)$values))
    {
        if((rle(silence)$values)[i]==T){ next }
        e.sum <- summary(wav[starts[i]:ends[i],2])
        events <- rbind(events,c(f,e.sum,time.const * (ends[i]-starts[i]+1)))
    }
}

events <- as.data.frame(events)
