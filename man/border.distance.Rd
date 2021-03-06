% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\name{border.distance}
\alias{border.distance}
\title{Distance from a point to the nearest boundary of a rectangle (plot).}
\usage{
border.distance(x, y, plotdim = c(1000, 500), pt = NULL)
}
\arguments{
\item{x}{Coordinates.}

\item{y}{Coordinates.}

\item{plotdim}{The x and y dimensions of the plot.}
}
\description{
Returns distance from a point to the nearest boundary of a rectangle (plot).
Accepts either separate x-y coordinates, or an object where x is first
column, y is second. The lower left corner of the plot is assumed to be 0,0.
}
