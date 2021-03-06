% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/growthfit.bin.R
\name{defineBinBreaks}
\alias{defineBinBreaks}
\title{This finds divisions of over the vector size which produce equal nu...}
\usage{
defineBinBreaks(size, nobin, ...)
}
\arguments{
\item{...}{Arguments passed to \code{\link[=enoughSamplePerBin]{enoughSamplePerBin()}}.}
}
\description{
This finds divisions of over the vector size which produce equal number of
elements per division. In case any of those divisions are too short, it tries
equal sized divisions. A default to use for start parameters when none are
supplied.
}
