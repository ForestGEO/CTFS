% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RipUvK.R
\name{CalcRingArea}
\alias{CalcRingArea}
\title{Given a dataframe that includes gx, gy coordinates, and a single va...}
\usage{
CalcRingArea(data, radius, plotdim)
}
\arguments{
\item{data}{A dataframe with gx and gy coordinates}

\item{radius}{A number, a single value radius.}

\item{plotdim}{The x and y dimensions of the plot.}
}
\description{
Given a dataframe that includes gx, gy coordinates, and a single value
radius, finds the area within radius from all points (summed). In the absence
of edge corrections, this would be simply N\emph{pi}radius^2, where N is the
number of points. But this uses the function partialcirclearea to do the edge
correction. This is ordinarily only used as a subroutine for RipUvK.
}
