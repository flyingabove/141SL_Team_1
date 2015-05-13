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
# Takes in all the CSVs and graphs the pitches (saves it, too).
#

pdf('all_sounds_by_color.pdf')

plot(1,type='n',axes=T,xlim=c(0,2),ylim=c(0,1000),ylab='Pitch Estimate',
     xlab='Time (s)',main='Pitch Estimates over Time')

for (f in list.files(pattern='*.csv'))
{
    wav <- read.table(f, header=F, sep=" ")
    silence <- wav[,2]==0

#    onset <- min(which(wav[,2] != 0))

#    ends <- cumsum(rle(silence)$lengths)
#    starts <- c(1,ends[-length(ends)]+1)
    sound.source <- unlist(strsplit(f,fixed=F,split='[0-9]'))[1]
    color.num = which(sound.source == 
        c("Adultfemale_cry","Adultfemale_laugh","Adultfemale_neutral",
          "Adultmale_laugh","Adultmale_neutral","Animal_cat",
          "Animal_dog","Baby_cry","Baby_laugh","Baby_neutral"))
    color.sel = (c('red','chocolate','coral2','orange','darkorange',
                'black','grey','blue','deepskyblue','cyan'))[color.num]
    # Fraction of a second
#    time.const <- 1
    lines(wav[,1],wav[,2],col=color.sel)
}

dev.off()
