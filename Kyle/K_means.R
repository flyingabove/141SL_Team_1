long.events <- events[which(events$Length > 18),]
long.events$Sound.Source <- as.factor(long.events$Sound.Source)
long.events$baby.cry <- as.factor(long.events$Sound.Source == 'Baby_cry')

for(i in 1:nrow(long.events))
{long.events$File.Name[i] <- unlist(strsplit(long.events$File.Name[i],fixed=F,split='[.]'))[1]}
long.events$File.Name <- as.factor(long.events$File.Name)

library(class)

vars <- c(3:9)
set.seed(5561)

n <- 45
k.pred.rate <- vector(length=n)
k.errors <- array(dim=c(2,2,n))
for( j in 1:n)
{
    errors <- matrix(0,nrow=2,ncol=2)

    for( i in levels(long.events$File.Name))
    {
        sound.knn <- knn(
            long.events[-which(long.events$File.Name == i),vars], # train
            long.events[which(long.events$File.Name == i),vars], # test
            cl = long.events$Sound.Source[-which(long.events$File.Name == i)], # true classifications
            k=j)    # k groups
        pred.baby.cry <- FALSE
        if('Baby_cry' %in% sound.knn){ pred.baby.cry <- TRUE }
        actu.baby.cry <- FALSE
        if('Baby_cry' %in% long.events$Sound.Source[which(long.events$File.Name == i)]){ actu.baby.cry <- TRUE }
        errors[pred.baby.cry+1,actu.baby.cry+1] <- errors[pred.baby.cry+1,actu.baby.cry+1] + 1
    }
    k.errors[,,j] <- errors
    k.pred.rate[j] <- sum(diag(errors))/sum(errors)
}

error.df <- data.frame(cbind(apply(k.errors,3,function(x) {sum(diag(x)) / sum(x)}),apply(k.errors,3,function(x) { (x[2,2] / sum(x[,2])) }),apply(k.errors,3,function(x) { (x[2,2] / sum(x[2,])) })))
names(error.df) <- c('pred.rate','type2rate','type1rate')

library(reshape)

error.df.long <- cbind(1:n,melt(error.df))

colnames(error.df.long)[1] <- 'x'

ggplot(error.df.long,aes(x,value,color=variable)) + geom_line()

