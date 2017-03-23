% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_quadfunc.R
\name{quad.to.gxgy}
\alias{quad.to.gxgy}
\title{quad.to.gxgy}
\usage{
quad.to.gxgy(quad, gridsize = 20, start = 0)
}
\description{
Convert quadrat names into x-y coordinates, assuming the first 2 digits are the column and the second two the row. Quad is a character. 
If the first row and column are 00, set start=0, etc.
}