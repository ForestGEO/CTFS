% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distributions.R
\name{pospower}
\alias{pospower}
\title{Raise to any power, but with negative numbers converted to positive...}
\usage{
pospower(x, expon)
}
\description{
Raise to any power, but with negative numbers converted to positive first, then reverted afterward. It thus follows what is normal behavior when
the exponent were a negative integer, but works also for even integers or any real exponent. For example, pospower(-4,0.5)=-2.
}
\examples{
\dontrun{
pospower(-4,0.5)}


}
