% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{make.CredIntervalVect}
\alias{make.CredIntervalVect}
\title{Take a vector y having mean then lower and upper credible limits an...}
\usage{
make.CredIntervalVect(y, digits = c(3, 3), CIonly = FALSE)
}
\arguments{
\item{y}{must be a vector of length 3, not a matrix.}

\item{digits}{number of decimal places in result, first for the mean, then the two credible limits}
}
\description{
Take a vector y having mean then lower and upper credible limits and convert to character string with parentheses. Result is a single (atomic) character vector with mean followed by parentheses enclosing lower and upper limits. This is not vectorized: it will work only with a single vector of length 3. Use apply to repeat for rows of a matrix.
}
\examples{
\dontrun{
make.CredIntervalVect(c(3.124,2.76,5.01),digits=c(2,1))}

}
