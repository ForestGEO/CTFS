% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilities.R
\name{left}
\alias{left}
\title{Leftmost n characters of a string.}
\usage{
left(s, n)
}
\arguments{
\item{s}{Character vector.}

\item{n}{Scalar of vector of the same lenght as \code{s}. If n < 0, returns all
except the rightmost n. If n == 0, returns an empty string.}
}
\value{
The leftmost n characters of a string.
}
\description{
A standard left function.
}
\section{Reuse good code}{

"The single biggest way to improve both the quality of your code and your
productivity is to reuse good code (...) Many algorithms have already been
invented, tested, discussed in the trade literature, reviewed, and improved".

--Code complete 2, by Steve McConnell.
}

\section{Alternative}{

A more powerful and general alternative is \code{\link[stringr:str_sub]{stringr::str_sub()}}:\preformatted{library(stringr)
library(ctfs)
string <- c("abcdefg", "abcdefg", "abcdefg")
# You can do the same
stringr::str_sub(string, end = 2)
#> [1] "ab" "ab" "ab"
left(string, n = 2)
#> [1] "ab" "ab" "ab"

# But you can also do more
stringr::str_sub(string, start= 2, end = 4)
#> [1] "bcd" "bcd" "bcd"
}
}

