% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapresponse.R
\name{coldata.to.imagemat}
\alias{coldata.to.imagemat}
\title{Map response variables using \code{\link[=contour]{contour()}}, \code{\link[=image]{image()}}, and \code{\link[=filled.contour]{filled.contour()}}.}
\usage{
coldata.to.imagemat(z, x = NULL, y = NULL, gridsize = 20,
  plotmin = c(0, 0), plotmax = c(1000, 500))
}
\arguments{
\item{z}{A numeric vector of responses, which means an attribute which has
map coordinates.}

\item{x}{The map coordinates of each column in the matrix, and the values
with which the x-axis of the map will be numbered. The number of columns of
\code{z}, \code{dim(z)\[2]}, must be exactly \code{length(x)}. If \code{x} is \code{NULL}, then it
is calculated using \code{plotmax}.}

\item{y}{The map coordinates of each row in the matrix, and the values with
which the y-axis of the map will be numbered; dim(z)[1] must be exactly
length(y). If y is NULL, then it is calculated using plotmax.}

\item{gridsize}{Size of each individual map.}

\item{plotmin}{The minimum plot x and y coordinates; in CTFS plots, these are
always 0,0. Ignored if x and y are submitted.}

\item{plotmax}{Maximum plot x and y coordinates. The default, 1000,500, is
typical CTFS 50-ha plot. Ignored if x and y are submitted.}
}
\value{
A list designed to match exactly the format of the RGDAL
raster object. It has components:
\itemize{
\item \code{x}: same as the argument x; if x is submitted as NULL, this is the vector
calculated by using plotmax; *  y: likewise for y;
\item \code{z}: exactly as submitted;
\item \code{columns}: number of columns in the grid, same as length(x);
\item \code{rows}: Number of rows in the grid, same as length(y);
\item \code{mat}: The matrix needed for graphing, exactly as needed for instance by
\code{\link[=imageGraph]{imageGraph()}}.
}
}
\description{
Map response variables using \code{\link[=contour]{contour()}}, \code{\link[=image]{image()}}, and
\code{\link[=filled.contour]{filled.contour()}}.
}
\details{
\code{\link[=contour]{contour()}}, \code{\link[=image]{image()}}, and \code{\link[=filled.contour]{filled.contour()}} are powerful and do the
difficult work, but they are a bit tricky to learn and have many options. If
you are expert with those 3 R functions, the functions below will not be
especially useful. They simply rearrange various types of data into the
correct format.

The first, \code{\link[=coldata.to.imagemat]{coldata.to.imagemat()}}, converts a vector of response variables
and converts it into a matrix of the correct form for use by \code{\link[=contour]{contour()}},
\code{\link[=image]{image()}}, and \code{\link[=filled.contour]{filled.contour()}}. There must be one value of the response
\code{z} for every position in a grid overlain on the map. In the case of CTFS
Plots, this means a value for \code{z} at every quadrat, though quadrat can be any
size.  The function \code{\link[=abundanceperquad]{abundanceperquad()}} produces exactly the correct kind of
vector for use by \code{\link[=coldata.to.imagemat]{coldata.to.imagemat()}}. The function \code{\link[=gxgy.to.index]{gxgy.to.index()}}
produces quadrat numbers that are the correct vector for use by
\code{\link[=coldata.to.imagemat]{coldata.to.imagemat()}}.

For example, consider a 50 ha plot of 1000 x 500 meters. If gridsize = 20,
the standard quadrat, then there are 50 columns x 25 rows in the plot.

In that case, the length of vector \code{z} must be exactly 1250, \code{length(x)} must
be exactly 50, and \code{length(y)} exactly 25. Alternatively, x and y can be set

NULL and it will be calculated from \code{plotmax = c(1000, 500)} and \code{plotmin = c(0, 0)}. The simplest application of this function for CTFS plots is to set
x and y NULL, and \code{plotmax} to the correct plot dimensions. Then make sure
\code{z} is the right size for the number of quadrats.

The common error with image and contour maps is getting the proper dimensions
for \code{z} and the proper sizes for \code{plotmax}, \code{x}, and \code{y}. If you get an error
data length is not a sub-multiple or multiple of the number of rows'then one
of those inputs is wrong.

\code{gridsize} must be of square quadrats, and cannot be NULL.
}
\examples{
\dontrun{
CTFSplot('bci',6,'full')

BA = abundanceperquad(
  bciex::bci12t6mini,
  gridsize = 20,
  plotdim = c(1000, 500),
  type = 'ba'
  )

totalBAperquad = colSums(BA$ba)
summary(totalBAperquad)
matrixdata <- coldata.to.imagemat(
  z = totalBAperquad,
  x = NULL,
  y = NULL,
  gridsize = 20,
  plotmax = c(1000, 500)
)
length(totalBAperquad)
dim(matrixdata$mat)
length(matrixdata$x)
}

}
