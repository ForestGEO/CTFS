% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fr-utils.R
\name{rm_na_row}
\alias{rm_na_row}
\title{Remove rows from data frame or matrix full of NA.}
\usage{
rm_na_row(.data)
}
\arguments{
\item{.data}{A data frame or matrix.}
}
\value{
Output and \code{.data}. have the same type.
}
\description{
Remove rows from data frame or matrix full of NA.
}
\examples{
library(tibble)
df <- tibble::tribble(
~x,  ~y,    ~z,
 1, "a", FALSE,
NA,  NA,    NA,
5,  "b",  TRUE,
NA,  NA,    NA,
NA, "c",    NA
)
rm_na_row(df)
}
\keyword{internal}
