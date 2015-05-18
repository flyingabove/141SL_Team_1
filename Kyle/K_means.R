long.events <- events[which(events$Length > 5),]

library(ggplot2)
pdf('Min')
ggplot(long.events, aes(factor(Sound.Source),Min))+geom_boxplot()
dev.off()
pdf('1Q.pdf')
ggplot(long.events, aes(factor(Sound.Source),X1Q))+geom_boxplot()
dev.off()
pdf('Mean.pdf')
ggplot(long.events, aes(factor(Sound.Source),Mean))+geom_boxplot()
dev.off()
pdf('Median.pdf')
ggplot(long.events, aes(factor(Sound.Source),Median))+geom_boxplot()
dev.off()
pdf('3Q.pdf')
ggplot(long.events, aes(factor(Sound.Source),X3Q))+geom_boxplot()
dev.off()
pdf('Max.pdf')
ggplot(long.events, aes(factor(Sound.Source),Max))+geom_boxplot()
dev.off()
pdf('Length.pdf')
ggplot(long.events, aes(factor(Sound.Source),Length))+geom_boxplot()
dev.off()

library(class)

vars <- c(3:9)
set.seed(5561)


tt <- runif(nrow(long.events)) > .5

sound.knn <- knn(long.events[which(tt),vars],long.events[which(!tt),vars],
    cl = long.events[which(tt),]$Sound.Source,k=10)
sound.knn.table <- table(sound.knn,long.events[which(!tt),]$Sound.Source)
sound.knn.table
sum(diag(sound.knn.table))/sum(sound.knn.table)
