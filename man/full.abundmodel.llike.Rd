% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/abund.fit.CTFS.R
\name{full.abundmodel.llike}
\alias{full.abundmodel.llike}
\title{With the table of abundances, hyper-parameter estimates, and estima...}
\usage{
full.abundmodel.llike(data, param, spmort, spR, type, debug = FALSE,
  badparam = NULL)
}
\arguments{
\item{debug}{Logical. If TRUE, call browser to debug.}

\item{badparam}{The name of a function (unquoted) that tests a set of model
parameters for validity; must return TRUE if parameters are valid,
otherwise FALSE.}
}
\description{
With the table of abundances, hyper-parameter estimates, and estimated
mortality rate and population growth for each species, calculates full model
likelihood.

Note use of spmean.mort.abundGibbs, not sppmean.mort.Gibbs; in the latter,
the one originally used in mortality model, the likelihood of observing a
mortality parameter does not depend on the population growth. Only used as a
subroutine of the main modeling function, model.littleR.Gibbs.
}
