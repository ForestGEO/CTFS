% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/growthfit.graph.R
\name{compare.growthbinmodel}
\alias{compare.growthbinmodel}
\title{Calculates various metrics of fit: DIC, BIC, AIC.}
\usage{
compare.growthbinmodel(fit, bins = 1:4, makegraph = TRUE,
  conflines = 0, newgraph = TRUE, export = pdf,
  outfile = "growth/linearbin.bestfit.pdf", h = 8, w = 10)
}
\arguments{
\item{fit}{A fitted model.}

\item{newgraph}{if FALSE, just graph to the screen and export is ignored; use
TRUE to create a new plot window or export to a file.}

\item{export}{File format to export to.}

\item{outfile}{Filename for output.}

\item{h, w}{A number giving the height and width.}
}
\description{
Calculates various metrics of fit: DIC, BIC, AIC based on the maximum
likelihood, AIC based on the mean of the Gibbs sampler, from output of the
model fit (all species, all bins 1:4).
}
