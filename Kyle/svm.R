#!/usr/bin/Rscript

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# DESCRIPTION
# 
# Support Vector Machine classification of the data
#

#library(rpart)
library(e1071)

long.events <- events[which(events$Length > 18),]
long.events$Sound.Source <- as.factor(long.events$Sound.Source)
long.events$baby.cry <- as.factor(long.events$Sound.Source == 'Baby_cry')

for(i in 1:nrow(long.events))
{long.events$File.Name[i] <- unlist(strsplit(long.events$File.Name[i],fixed=F,split='[.]'))[1]}
long.events$File.Name <- as.factor(long.events$File.Name)

set.seed(530628)

#errors <- vector(length=0)
errors <- matrix(0,nrow=length(levels(long.events$baby.cry)),ncol=length(levels(long.events$baby.cry)))

n <- 120

error3d <- array(0,dim=c(2,2,n))
pred.rate <- vector(length=n)
for( j in 1:n)
{
    errors <- matrix(0,nrow=2,ncol=2)

    for( i in levels(long.events$File.Name))
    {
        e.test <- long.events[which(long.events$File.Name == i),]
        e.train <- long.events[-which(long.events$File.Name == i),]

        event.svm <- svm(x=e.train[,c(4:9)],y=e.train$baby.cry, cost = j, gamma = 1)
        event.pred <- predict(event.svm,newdata=e.test[,c(4:9)])

        if(TRUE %in% event.pred){ event.pred[1] <- TRUE }

        e.svm.tab <- table(pred = event.pred[1], true = e.test[1,10])
    #	errors <- c(errors,sum(diag(e.svm.tab))/sum(e.svm.tab))
        errors <- errors + e.svm.tab
    }
    error3d[,,j] <- errors
    pred.rate[j] <- sum(diag(errors)) / sum(errors)
}

library(ggplot2)

error.df <- data.frame(cbind(apply(error3d,3,function(x) {sum(diag(x)) / sum(x)}),apply(error3d,3,function(x) { (x[2,2] / sum(x[,2])) }),apply(error3d,3,function(x) { (x[2,2] / sum(x[2,])) })))
names(error.df) <- c('pred.rate','type2rate','type1rate')

library(reshape)

error.df.long <- cbind(1:n,melt(error.df))

colnames(error.df.long)[1] <- 'x'

ggplot(error.df.long,aes(x,value,color=variable)) + geom_line()
