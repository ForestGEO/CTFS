% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fr-utils.R
\name{some_but_not_all_is_na}
\alias{some_but_not_all_is_na}
\title{Predicate to determine if some but not all elements of a vector are NA.}
\usage{
some_but_not_all_is_na(x)
}
\arguments{
\item{x}{Vector}
}
\value{
A single locical.
}
\description{
Predicate to determine if some but not all elements of a vector are NA.
}
\examples{
x <- c(1:3, NA)
some_but_not_all_is_na(x)
x <- c(NA, NA)
some_but_not_all_is_na(x)
x <- c(1:3)
some_but_not_all_is_na(x)
}
\keyword{internal}
