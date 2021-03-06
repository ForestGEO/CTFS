% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geometry.R
\name{intersection.of.lines}
\alias{intersection.of.lines}
\title{Finds the point where 2 lines intersect, given lines as 2 parameter...}
\usage{
intersection.of.lines(b1, m1, b2, m2)
}
\description{
Finds the point where 2 lines intersect, given lines as 2 parameters each (intercept b then slope m).

If the two lines are identical, it returns NAs. Note the check for both slopes being infinite (vertical lines).

This is vectorized: either pair can be vector if other pair is atomic, or both can be same length vectors.
}
