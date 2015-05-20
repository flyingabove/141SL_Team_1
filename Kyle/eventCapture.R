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
# Searches for all CSV files, reads them in, identifies sections of
# silence, and segments the data. Then does a summary analysis on each
# individual section and outputs all the data in a single csv.
#

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
