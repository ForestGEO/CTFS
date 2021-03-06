% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\name{cumul.above}
\alias{cumul.above}
\title{Seek x at which the curve passes through a given y.}
\usage{
cumul.above(x, y, cutoff, logaxs = "", graphit = TRUE,
  returnfull = FALSE)
}
\arguments{
\item{graphit}{Logical; if \code{TRUE} adds plot output.}
}
\description{
Given y values as a function of x, this seeks the x at which the curve passes
through a given y. It sets a variable whichabove to 0 for all cases where
y > cutoff, otherwise 0, then fits a logistic regression.

The midpoint of the logistic regression is a good estimate.
}
