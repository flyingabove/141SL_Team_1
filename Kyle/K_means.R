long.events <- events[which(events$Length > 18),]
long.events$Sound.Source <- as.factor(long.events$Sound.Source)
long.events$baby.cry <- as.factor(long.events$Sound.Source == 'Baby_cry')

for(i in 1:nrow(long.events))
{long.events$File.Name[i] <- unlist(strsplit(long.events$File.Name[i],fixed=F,split='[.]'))[1]}
long.events$File.Name <- as.factor(long.events$File.Name)

library(class)

vars <- c(3:9)
set.seed(5561)

errors <- matrix(0,nrow=length(levels(long.events$Sound.Source)),ncol=length(levels(long.events$Sound.Source)))

for( i in levels(long.events$File.Name))
{
    sound.knn <- knn(
        long.events[-which(long.events$File.Name == i),vars], # train
        long.events[which(long.events$File.Name == i),vars], # test
        cl = long.events$Sound.Source[-which(long.events$File.Name == i)], # true classifications
        k=1)    # k groups
    sound.knn.table <- table(sound.knn,long.events$Sound.Source[which(long.events$File.Name == i)])
    errors <- errors + sound.knn.table
}

sum(diag(errors))/sum(errors)

