
# Roxygen documentation generated programatically -------------------

#'
#'

#' Convert quadrat names into x-y coordinates.
#'
#' @description
#' Convert quadrat names into x-y coordinates, assuming the first 2 digits are
#' the column and the second two the row. Quad is a character.
#' 
#' @section Argument details:
#' If the first row and column are 00, set start = 0, etc. 
#' 
#' @template gridsize_side
#' @param quad A character giving the quadrat name to convert to x-y coordinates.
#'
'quad.to.gxgy'

#' Takes row and column numbers and identifies the quadrate number (index).
#'
#' @description
#' Takes row and column numbers and identifies the quadrate number (index). The 
#' row and column numbers are based on a `gridsize` that by default divides the 
#' plot into 20 by 20 m squares. The g`ridsize` can be defined by the user so 
#' other quadrate sizes can be used.
#' 
#' @inheritParams findborderquads
#' @template gridsize_side
#' @param rowno Row number.
#' @param colno Column number.
#'
'rowcol.to.index'

#' Calculate a quadrat name from gy-gy. 
#'
#' @description
#' Calculate a quadrat name (column number then row number, as a 4-digit 
#' character string) from gy-gy.
#' 
#' @template plotdim
#' @template gridsize_side
#' @template gx_gy
#' @param start If `start = "zero"`, quadrats start with `0000`, otherwise, they
#'   start with `0101`.
#' 
'gxgy.to.quad'

#' Convert x, y coordinates and plot dimensions into 4-character quadrat names.
#'
#' @description
#' Convert x, y coordinates and plot dimensions into 4-character quadrat names.
#' If x or y are missing, the quadrat=9999.
#'
#' @template plotdim
#' @template x_coordinates
#' @template y_coordinates
#'
'getquadratname'

#' Convert an integer to a character, with a single leading zero if th...
#'
#' @description
#' Convert an integer to a character, with a single leading zero if the integer
#' is < 10. Does not handle integers >99
#'
#'
'convert.rowcol'

#' Assign any location(s) a single index identifying the quadrat.
#'
#' @description
#'
#' Assign any location(s) a single index identifying the quadrat. The index runs
#' from 1 to the number of quadrats.
#'
#' @inheritParams gxgy.to.hectindex
#' @inheritParams findborderquads
#'
'gxgy.to.index'

#' Calculate the row and column given the quadrat index.
#'
#' @description
#' Calculate the row and column given the quadrat index, as calculated in
#' gygy.to.index. Both row and column start at 1, not 0 as in quadrat naming.
#' 
#' @template index_quad_num
#'
#' @inheritParams gxgy.to.index
#'
'index.to.rowcol'

#' Calculate the x and y coordinates given the quadrat index.
#' 
#' @description
#' Calculate the x and y coordinates given the quadrat index, as calculated in
#' gygy.to.index.
#' 
#' @inheritParams findborderquads
#' 
'index.to.gxgy'

#' Returns row and column for any set of coordinates.
#' 
#' @description
#' Returns row and column for any set of coordinates. Rows and columns both
#' start at 1, not 0.
#' 
#' @inheritParams gxgy.to.index
#' 
'gxgy.to.rowcol'

#' Converts GX GY Coordinates to a Hectare Number. 
#' 
#' @description
#' Takes an x, y plot location and identifies the hectare number.
#' 
#' @inheritParams findborderquads
#' @template gx_gy
#' 
'gxgy.to.hectindex'

#' Calculate local x and y coordinates from global coordinates.
#'
#' @description
#' Given global coordinates and quadrat and plot dimensions, calculate local x
#' and y, the within-quadrat coordinates.
#' 
#' @template plotdim
#' @template gridsize_side
#' @template gx_gy
#'
'gxgy.to.lxly'

#' Calculate p5x5 from local or within-quadrat coordinates for a 20-m quadrat.
#'
#' @description
#' Given local, or  within-quadrat, coordinates for a 20-m quadrat, return the
#' p5x5;
#' 
#' @template gridsize_side
#' @param lx,ly Must be vectors of equal length. Any values outside [0,20) are
#'   returned `p5 = NA`.
#' 
'lxly.to.p5'

#' Given a quadrat index, calculate indices of neighboring quadrats.
#' 
#' @description 
#' Calculate indices of neighboring quadrats, for a given quadrat index.
#' 
#' @details
#' Standard `plotdim` dimensions is : east-west 1000m and north-south 500m, and
#' standard `gridsize` is 20 x 20m by default.
#' 
#' @return A vector of numbers, the quadrate indices for all surrounding
#'   quadrates.
#'
#' @template gridsize_side
#' @template plotdim
#' @template index_quad_num
#' @param dist Distance in m within which the neighboring quadrates are located.
#'   Distance is measured from any side of the index quadrate.
#'
'findborderquads'

#' Calculates the mean density in neighboring quadrats for every quadr...
#'
#' @description
#'
#' Calculates the mean density in neighboring quadrats for every quadrat, given
#' a vector of abundances per quadrat. The vector of abundances must be ordered
#' by quadrat index.
#'
#'
'create.neighbordata'

#' For every quadrat, finds neighboring quadrats and returns their abundance.
#'
#' @description
#' For every quadrat, finds neighboring quadrats and then returns a vector of
#' abundances in those neighbors, as well as the number of neighboring quadrats.
#' A subroutine used by create.neighbordata.
#'
#' @template gridsize_side
#' @template plotdim
#'
'findneighborabund'

#' Find proportion of neighboring quadrats in which a species is present.
#'
#' @description
#' Finds proportion of neighboring quadrats in which a species is present. The
#' input vector is presence-absence for every quadrat. It returns a vector of
#' the same length.
#' 
#' @template plotdim
#'
'neighbors'

#' Creates a torus-shifted quadrat topographic dataset.
#'
#' @description
#' Creates a torus-shifted quadrat topographic dataset. It accepts a quadrat
#' dataset with elevation, convexity, and slope for each 20x20 m quadrat in a
#' plot. It returns a parallel dataset that is torus shifted, slip.horiz
#' quadrats left-right and slip.vert quadrats up-down.
#' 
#' That is, in the new dataset, the topographic information of each quadrat
#' comes from a quadrat displaced by slip.horiz and slip.vert units away in the
#' original dataset.
#' 
#' @template plotdim
#' @template gridsize_side
#' 
'torus.shift'

#' Convert indices from larger to smaller quadrats.
#'
#' @description
#' Takes a vector of indices for a larger quadrat dimension, as created by
#' gxgy.to.index, and for each returns a vector of indices of smaller quadrats
#' that would fit completely within. Both larger and smaller quadrats must be
#' square. Returns a matrix, each row being a vector of smaller quadrats inside
#' a single larger quadrat.
#' 
#' @template plotdim
#' @template index_quad_num
#' 
'getsmallerquads'

#' Create a complete of points x-y, given the sequence of unique x and...
#'
#' @description
#'
#' Create a complete of points x-y, given the sequence of unique x and the sequence of unique y. So if x=y=0:2,
#' it creates all pairs: 0,0; 0,1; 0,2; 1,0; 1,1; 1,2; etc.
#'
#'
'full.xygrid'

#' Distance from one quadrat to a second quadrat.
#'
#' @description
#' Calculates the distance from one quadrat to a second quadrat, where quadrats
#' are designated by their indices, as created by gxgy.to.index. The two
#' quadrats can be vectors, but must be of the same length (or one of the two
#' can be atomic).
#' 
#' @return 
#' A vector of distances same length as input vectors.
#' 
#' @template plotdim
#' @template gridsize_side
#'
#' @examples
#' \dontrun{
#' bad1=pt1$gx<0 | pt1$gy<0 
#' bad2=pt2$gx<0 | pt2$gy<0
#' xdist=pt1$gx-pt2$gx
#' ydist=pt1$gy-pt2$gy
#' dist=sqrt(xdist^2+ydist^2)
#' if(length(pt1)==1 & bad1==T) dist=rep(-1,length(pt2))
#' else if(length(pt2)==1 & bad2==T) dist=rep(-1,length(pt1)) 
#' dist[bad1]=(-1)
#' dist[bad2]=(-1)
#' return(dist)
#' }
'distance'

# Source code and original documentation ----------------------------
# <function>
# <name>
# quad.to.gxgy
# </name>
# <description>
# Convert quadrat names into x-y coordinates, assuming the first 2 digits are the column and the second two the row. Quad is a character. 
# If the first row and column are 00, set start=0, etc. 
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

quad.to.gxgy=function(quad,gridsize=20,start=0)
{
 quad=as.numeric(quad)
 
 rowno=quad%%100-start
 colno=floor(quad/100)-start
 
 return(data.frame(gx=colno*gridsize,gy=rowno*gridsize))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# rowcol.to.index
# </name>
# <description>
# None given.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

rowcol.to.index=function(rowno,colno,gridsize=20,plotdim=c(1000,500))
{
 badrc=(rowno<=0 | colno<=0 | rowno>plotdim[2]/gridsize | colno>plotdim[1]/gridsize)

 rowno=rowno-1
 colno=colno-1
 maxrow=floor(plotdim[2]/gridsize)
 index=colno*maxrow+rowno+1
 if(length(badrc[badrc>0])) index[badrc]=NA
 return(index)
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# gxgy.to.quad
# </name>
# <description>
# Calculate a quadrat name (column number then row number, as a 4-digit character string) from gy-gy. If start is set to zero, quadrats start with 0000, otherwise, 0101.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

gxgy.to.quad=function(gx,gy,gridsize=20,plotdim=c(1000,500),digits=2,start='zero')
{
 rc=gxgy.to.rowcol(gx,gy,gridsize,plotdim)
 if(start=='zero') rc=rc-1
 
 if(digits!=2) return("Must rewrite if three digit quadrats")
 
 lowrow=which(rc$row<10 & rc$row>(-1))
 rowstr=as.character(rc$row)
 rowstr[lowrow]=pst("0",rowstr[lowrow])

 lowcol=which(rc$col<10 & rc$col>(-1))
 colstr=as.character(rc$col)
 colstr[lowcol]=pst("0",colstr[lowcol])

 return(pst(colstr,rowstr))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# getquadratname
# </name>
# <description>
# Convert x, y coordinates and plot dimensions into 4-character quadrat names. If x or y are missing, the quadrat=9999.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

getquadratname=function(x,y,plotdim)
{
 rowcol=gxgy.to.rowcol(gx=x,gy=y,plotdim=plotdim)-1

 rowname=convert.rowcol(rowcol$row)
 colname=convert.rowcol(rowcol$col)

 result=pst(colname,rowname)
 result[is.na(rowname)]="9999"

 return(result)
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# convert.rowcol
# </name>
# <description>
# Convert an integer to a character, with a single leading zero if the integer is < 10. Does
# not handle integers >99
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

convert.rowcol=function(num)
{
 name=as.character(num)

 short = num<10 & !is.na(num)
 name[short]=pst("0",num[short])

 return(name)
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# gxgy.to.index
# </name>
# <description>
# Assign any location(s) a single index identifying the quadrat. The index runs from 1 to the number of quadrats. 
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

gxgy.to.index=function(gx,gy,gridsize=20,plotdim=c(1000,500))
{
 badgxgy=(gx<0 | gy<0 | gx>=plotdim[1] | gy>=plotdim[2] | is.na(gx) | is.na(gy))

 colno=1+floor(gx/gridsize)
 rowno=1+floor(gy/gridsize)
 if(length(badgxgy[badgxgy>0])) colno[badgxgy]=rowno[badgxgy]=NA

 return(rowcol.to.index(rowno,colno,gridsize,plotdim))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# index.to.rowcol
# </name>
# <description>
# Calculate the row and column given the quadrat index, as calculated in gygy.to.index. Both row and column start at 1, not 0 as in quadrat naming. 
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

index.to.rowcol=function(index,gridsize=20,plotdim=c(1000,500))
{
 index=index-1

 badindex=(index<0 | index>=plotdim[1]*plotdim[2]/(gridsize^2))

 maxrow=floor(plotdim[2]/gridsize)
 rowno=index%%maxrow
 colno=floor((index-rowno)/maxrow)
 row=rowno+1
 col=colno+1

 if(length(badindex[badindex>0])) row[badindex]=col[badindex]=-1

 return(data.frame(row=row,col=col))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# index.to.gxgy
# </name>
# <description>
# Calculate the x and y coordinates given the quadrat index, as calculated in gygy.to.index.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

index.to.gxgy=function(index,gridsize=20,plotdim=c(1000,500))
{
 badindex=(index<=0 | index>plotdim[1]*plotdim[2]/(gridsize^2))

 rc=index.to.rowcol(index,gridsize,plotdim)
 gx=gridsize*(rc$col-1)
 gy=gridsize*(rc$row-1)
 
 if(length(badindex[badindex>0])) gx[badindex]=gy[badindex]=-1

 return(data.frame(gx=gx,gy=gy))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# gxgy.to.rowcol
# </name>
# <description>
# Returns row and column for any set of coordinates. Rows and columns both start at 1, not 0. 
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

gxgy.to.rowcol=function(gx,gy,gridsize=20,plotdim=c(1000,500))
{
 index=gxgy.to.index(gx,gy,gridsize,plotdim)
 return(index.to.rowcol(index,gridsize,plotdim))
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# gxgy.to.hectindex
# </name>
# <description>
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

gxgy.to.hectindex=function(gx,gy,plotdim=c(1000,500))
{
 if(gx>=plotdim[1] || gy>=plotdim[2] || gx<0 || gy<0) return(rep(-1,length(index)))
 else
  {
   ha.rowno=floor(gy/100)
   ha.colno=floor(gx/100)
   max.ha.row=plotdim[2]/100
   return(ha.colno*max.ha.row+ha.rowno+1)
  }
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# gxgy.to.lxly
# </name>
# <description>
# Given global coordinates and quadrat and plot dimensions, calculate local x and y, the within-quadrat coordinates
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

gxgy.to.lxly=function(gx,gy,gridsize=20,plotdim=c(1000,500))
{
 rc=gxgy.to.rowcol(gx,gy,gridsize,plotdim)-1

 lx=gx-gridsize*rc$col
 ly=gy-gridsize*rc$row

 return(data.frame(lx,ly))
}
# </source>
# </function>
# 
# 
# <function>
# <name>
# lxly.to.p5
# </name>
# <description>
# Given local, or  within-quadrat, coordinates for a 20-m quadrat, return the p5x5; lx and ly must be vectors of equal length. Any values outside [0,20) are returned p5=NA.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

lxly.to.p5=function(lx,ly,gridsize=20)
{
 x5=as.character(1+floor(lx/5))
 y5=as.character(1+floor(ly/5))
 
 p5=pst(x5,y5)
 bad=lx<0 | lx>=20 | ly<0 | ly>=20
 p5[bad]=NA

 return(p5)
}
# </source>
# </function>
#
# 
# <function>
# <name>
# findborderquads
# </name>
# <description>
# Calculate indices of neighboring quadrats, for a given quadrat index.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

findborderquads=function(index,dist=20,gridsize=20,plotdim=c(1000,500))
{
 bound.index=numeric(8)
 no.boundaries=0

 row=index.to.rowcol(index,gridsize,plotdim)$row
 col=index.to.rowcol(index,gridsize,plotdim)$col
 maxrow=plotdim[2]/gridsize
 maxcol=plotdim[1]/gridsize

 layers=floor(dist/gridsize)
 
 for(i in (row-layers):(row+layers))
  for(j in (col-layers):(col+layers))
   if(i!=row | j!=col)
     if(i>=1 & i<=maxrow & j>=1 & j<=maxcol)
        {
         no.boundaries=no.boundaries+1
         bound.index[no.boundaries]=rowcol.to.index(i,j,gridsize,plotdim)
        }

 return( bound.index[bound.index>0] )
} 
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# create.neighbordata
# </name>
# <description>
# Calculates the mean density in neighboring quadrats for every quadrat, given
# a vector of abundances per quadrat. The vector of abundances must be ordered
# by quadrat index.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

create.neighbordata=function(abundperquad)
{
 neighborabund=abundperquad

 for(i in 1:dim(abundperquad)[1])
  {
   cat("species is ", rownames(abundperquad)[i], "\n")
   neighborabund[i,]=findneighborabund(abundperquad[i,])$neighbor
  }

 return(neighborabund)
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# findneighborabund
# </name>
# <description>
# For every quadrat, finds neighboring quadrats and then returns a vector of abundances in those
# neighbors, as well as the number of neighboring quadrats. A subroutine used by create.neighbordata.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

findneighborabund=function(abundvect,gridsize=20,plotdim=c(1000,500))
{
 noquads=length(abundvect)
 neighborabund=quadcount=numeric()

 for(i in 1:noquads)
  {
   neighborquads=findborderquads(i)
   neighborabund[i]=mean(abundvect[neighborquads])
   quadcount[i]=length(neighborquads)
  }

 return(data.frame(abund=abundvect,neighbor=neighborabund,quadcount=quadcount))
}
# </source>
# </function>
# 
# 
# 
# 
# 
# <function>
# <name>
# neighbors
# </name>
# <description>
# Finds proportion of neighboring quadrats in which a species is present. The input vector
# is presence-absence for every quadrat. It returns a vector of the same length.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

neighbors=function(pres,plotdim=c(1000,500))
{
 colno=plotdim[1]/20
 rowno=plotdim[2]/20
 totalquads=colno*rowno
 neigh=numeric() 

 for(i in 1:totalquads)
  {
   neigh.quads=findborderquads(i,plotdim=plotdim)
   neigh[i]=sum(pres[neigh.quads])/length(neigh.quads)
  }

 return(neigh)
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# torus.shift
# </name>
# <description>
# Creates a torus-shifted quadrat topographic dataset. It accepts a quadrat dataset
# with elevation, convexity, and slope for each 20x20 m quadrat in a plot. It returns a parallel
# dataset that is torus shifted, slip.horiz quadrats left-right and slip.vert quadrats up-down. 
# That is, in the new dataset, the topographic information of each quadrat comes from a quadrat
# displaced by slip.horiz and slip.vert units away in the original dataset.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

torus.shift=function(quaddata,slip.horiz,slip.vert,invert=F,reverse=F,plotdim=c(1000,500),gridsize=20)
{
 rows=plotdim[2]/gridsize
 columns=plotdim[1]/gridsize
 totalquad=rows*columns

 q20=index.to.rowcol(1:totalquad,plotdim=plotdim,gridsize=gridsize)

 newq20=q20

 newq20$row=q20$row-slip.vert
 below=newq20$row<=0
 newq20$row[below]=newq20$row[below]+rows
 above=newq20$row>rows
 newq20$row[above]=newq20$row[above]-rows

 newq20$col=q20$col-slip.horiz
 below=newq20$col<=0
 newq20$col[below]=newq20$col[below]+columns
 above=newq20$col>columns
 newq20$col[above]=newq20$col[above]-columns

 newindex=rowcol.to.index(newq20$row,newq20$col,plotdim=plotdim,gridsize=gridsize)
 ord=order(newindex)
 newquaddata=quaddata[ord,]
 rownames(newquaddata)=1:totalquad
 return(newquaddata)
}
# </source>
# </function>
# 
# 
# 
# 
# 
# <function>
# <name>
# getsmallerquads
# </name>
# <description>
# Takes a vector of indices for a larger quadrat dimension, as created by gxgy.to.index, and for
# each returns a vector of indices of smaller quadrats that would fit completely
# within. Both larger and smaller quadrats must be square. Returns a matrix, each row being a 
# vector of smaller quadrats inside a single larger quadrat.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

getsmallerquads=function(index,gridlarge,gridsmall,plotdim)
{
 large=index.to.gxgy(index,gridsize=gridlarge,plotdim=plotdim)

 factor=round(gridlarge/gridsmall)-1
 side=factor+1

 smallquad=matrix(nrow=length(index),ncol=side^2)
 rownames(smallquad)=index

 for(i in 1:length(index))
   {
    x=seq(large$gx[i],large$gx[i]+gridsmall*factor,by=gridsmall)
    y=seq(large$gy[i],large$gy[i]+gridsmall*factor,by=gridsmall)
   
    smallx=rep(x,rep(side,side))
    smally=rep(y,side)

    smallquad[i,]=gxgy.to.index(smallx,smally,gridsize=gridsmall,plotdim=plotdim)

   }
 
 return(smallquad)  
}
# </source>
# </function>
# 
# 
# 
# <function>
# <name>
# full.xygrid
# </name>
# <description>
# Create a complete of points x-y, given the sequence of unique x and the sequence of unique y. So if x=y=0:2,
# it creates all pairs: 0,0; 0,1; 0,2; 1,0; 1,1; 1,2; etc.
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

full.xygrid=function(x,y)
{
 fully=rep(y,length(x))
 fullx=rep(x,rep(length(y),length(x)))

 return(data.frame(x=fullx,y=fully))
}
# </source>
# </function>
# 

# <function>
# <name>
# distance
# </name>
# <description>
# Calculates the distance from one quadrat to a second quadrat, where quadrats are designated by their indices, as
# created by gxgy.to.index. The two quadrats can be vectors, but must be of the same length (or one of the two can be atomic). 
# Returns a vector of distances same length as input vectors. 
# </description>
# <arguments>
# 
# </arguments>
# <sample>
# 
# </sample>
# <source>
#' @export

distance=function(quad1,quad2,gridsize=20,plotdim=c(1000,500))
{
 pt1=index.to.gxgy(quad1,gridsize=gridsize,plotdim=plotdim) 
 pt2=index.to.gxgy(quad2,gridsize=gridsize,plotdim=plotdim) 

 return(xydistvect(pt1,pt2))
 
# bad1=pt1$gx<0 | pt1$gy<0 
# bad2=pt2$gx<0 | pt2$gy<0

# xdist=pt1$gx-pt2$gx
# ydist=pt1$gy-pt2$gy
 
# dist=sqrt(xdist^2+ydist^2)

# if(length(pt1)==1 & bad1==T) dist=rep(-1,length(pt2))
# else if(length(pt2)==1 & bad2==T) dist=rep(-1,length(pt1)) 

# dist[bad1]=(-1)
# dist[bad2]=(-1)

# return(dist)
}
# </source>
# </function>
# 
