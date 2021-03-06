% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RipUvK.R
\name{partialcirclearea}
\alias{partialcirclearea}
\title{Area of a circle of radius r that is inside a rectangular plot.}
\usage{
partialcirclearea(r, c2, cy1, cy2)
}
\arguments{
\item{r}{Radius.}
}
\description{
Calculates the area of a circle of radius r that is inside a rectangular plot.

The distance from the circle center to plot edges are c2, cy1, cy2, where cy1
is the shortest distance to a y-boundary and cy3 the longest, while c2 is the
shortest x distance.

The longest x distance is not needed.

This will not work if the longest x distance < radius of the circle.  The
greatest radius allowed is thus half the x dimension of the plot, generally
250 or 500 m.

Ordinarily only used as a subroutine of RipUvK.
}
