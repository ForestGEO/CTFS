% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mortality.R
\name{mortality}
\alias{mortality}
\title{Mortality, forest-wide or based on one or two categories.}
\usage{
mortality(census1, census2, alivecode = c("A", "AB", "AS"),
  split1 = NULL, split2 = NULL)
}
\arguments{
\item{census1}{The R Analytical Table for a single census, either tree or
stem.}

\item{census2}{The matching R Analytical Table for a later census.}

\item{alivecode}{character, codes of the variable \code{status} that indicate the
tree is alive. The default 'A' is the standard CTFS designation for living
trees or stems}

\item{split1}{a vector of categories, one per individual}

\item{split2}{another vector of categories, one per individual}
}
\value{
Output of the mortality function is a list with components:
\itemize{
\item N, the number of individuals alive in the census 1 per category selected
\item D, the number of individuals no longer alive in census 2
\item rate, the mean annualized mortality rate constant per category selected,
calculated as (log(N)-log(S))/time
\item upper, upper confidence limit of mean rate
\item lower, lower confidence limit of mean rate
\item time, mean time interval in years
\item date1, mean date included individuals were measured in census 1, as julian
object (R displays as date, but treats as integer)
\item date2, mean date in census 2
\item dbhmean, mean dbh in census 1 of individuals included
}

Pass the list to \code{\link[=assemble.demography]{assemble.demography()}} with \code{type = "m"} to convert the list a
data.frame.
}
\description{
Calculate mortality for the entire forest, or based on one or two
user-submitted factors.
}
\details{
Mortality is the main function, and is constructed like growth and
recruitment. It requires two complete datasets, one per census, with dbh,
pom, and date for every individual of all species in at least 2 censuses (see
Data Format).

Mortality is based on only on the column status: any tree without an
alivecode in census 2 is considered dead. Individuals whose status is NA in
either census are deleted from all counts, since it's impossible to count
them either as survivors or dead.
}
\examples{
\dontrun{

CTFSplot("bci", 56)
mort.data = mortality(bciex::bci12t5mini, bciex::bci12t6mini)
mort.data$rate
mort.data = growth(
  bciex::bci12t5mini, bciex::bci12t6mini, 
  split1 = bciex::bci12t5mini$sp
)
mort.data$rate
assemble.demography(mort.data, type = 'm')
}

}
