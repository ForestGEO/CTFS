% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biomass.CTFSdb.R
\name{AGB.dbtable}
\alias{AGB.dbtable}
\title{This function looks up the database named AGB in the MySQL server t...}
\usage{
AGB.dbtable(df, dbname, plot, code, censusno)
}
\arguments{
\item{df}{A table of individual stems.}

\item{plot}{Character string giving the name of the plot where the data comes
from (as it appears in the names of the R Analytical Tables).}
}
\description{
This function looks up the database named AGB in the MySQL server to get a table of biomass per stem. The MySQL table must have treeID, stemID, censusID,
and a column agb with biomass in tons. This is used in cases where biomass for a plot has been calculated separately, using a method other than one of
the Chave allometric equations. The alternative AGB calculation is stored for each plot in this database. The name of the table matches the plot name.
}
