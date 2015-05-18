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

long.events <- events[which(events$Length > 5),]
long.events$Sound.Source <- as.factor(long.events$Sound.Source)

set.seed(530628)

testi <- which(runif(nrow(long.events)) > .5)
e.test <- long.events[testi,]
e.train <- long.events[-testi,]

event.svm <- svm(x=e.train[,3:9],y=e.train$Sound.Source, cost = 100, gamma = 1)
event.pred <- predict(event.svm,newdata=e.test[,3:9])

e.svm.tab <- table(pred = event.pred, true = e.test[,2])
sum(diag(e.svm.tab))/sum(e.svm.tab)
