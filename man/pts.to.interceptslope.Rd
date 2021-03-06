% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geometry.R
\name{pts.to.interceptslope}
\alias{pts.to.interceptslope}
\title{Returns intercept and slope of a line given two pairs of coordinate...}
\usage{
pts.to.interceptslope(pt1, pt2)
}
\description{
Returns intercept and slope of a line given two pairs of coordinates on the line. Arguments can be vectors; if both are vectors, must be same size.

If the x's are exactly equal, so slope is infinite, it returns the x as the first argument.
}
