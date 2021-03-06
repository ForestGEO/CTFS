% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distributions.R
\name{dasympower}
\alias{dasympower}
\title{A bilateral power distribution, centered at center, decaying with e...}
\usage{
dasympower(x, center, rate1, rate2, log = FALSE)
}
\arguments{
\item{center}{center Center of the distribution.}
}
\description{
A bilateral power distribution, centered at center, decaying with exponent
rate1 for positive x and rate2 for negative x. Both rate1 and rate2 must be <
(-1). See dpower, this is analogous to dasymexp for dpower. By R. Chisholm.
}
