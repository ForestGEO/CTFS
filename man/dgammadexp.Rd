% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distributions.R
\name{dgammadexp}
\alias{dgammadexp}
\title{PDF by adding a gamma distribution to a symmetrical exponential distribution.}
\usage{
dgammadexp(z, mean, sd, lambda, draws = 10000, div = 0.1,
  xrange = c(-10, 30), graphit = F)
}
\arguments{
\item{z}{A numeric vector.}

\item{mean, sd}{The mean and sd of the gamma.}

\item{lambda}{Rate of the exponential.}

\item{graphit}{Logical; if \code{TRUE} adds plot output.}
}
\description{
PDF of a function formed by adding a gamma distribution to a symmetrical
exponential distribution. This means simply adding a PDF for a gamma minus an
exponential to the PDF for a gamma plus an exponential.
}
