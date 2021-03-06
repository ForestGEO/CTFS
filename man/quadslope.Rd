% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/slope.R
\name{quadslope}
\alias{quadslope}
\title{Given the elevation at four corners of a square of side=gridsize, t...}
\usage{
quadslope(cornerelev, gridsize = 20)
}
\arguments{
\item{cornerelev}{vector of 4 elevations}

\item{gridsize}{Side of the square quadrate.}
}
\description{
Given the elevation at four corners of a square of side=gridsize, this
estimates the slope in degrees of the terrain over that square. The slope is
calculated for each of the 4 planes defined by omitting one of the points.

\code{quadslope()} divides the 4 corners of a quadrat into 4 different groups of 3
stakes, takes the slope of each, then averages these were first written in
C++ see slopeelev.cpp for more on the geometry.

The 4 slopes are averaged. Returns both the mean slope and the sqrt of the
variance of the 4 different slopes.
}
\seealso{
\code{\link[=calcslope]{calcslope()}}, \code{\link[=quadslope]{quadslope()}}
}
