#' Create a dummy wsgdata data set
#'
#' Create a dummy wsgdata data set with random values of species density.
#' 
#' If you lack a real wood density table, you can use this function to create a
#' dummy one. For example, this may help you to test `biomass.CTFSdb()` and
#' `density_ind()`.
#' 
#' See `?density_ind()`, particularly notice the following: _"There must be a
#' table of wood density submitted (wsgdata), and this table must have a column
#' sp with species names, a column plot, plus the wood density in a column
#' called wsg (though the name of that column can be changed using the argument
#' denscol)"_.
#'
#' @template plot
#' @param censdata Census data, e.g. `bciex::bci12t1mini`.
#'
#' @return A data frame with one row per species in `censdata` and 3 variables.
#' @export
#'
#' @examples
#' wsgdata_dummy(bciex::bci12s7mini)
wsgdata_dummy <- function(censdata, plot = "bci") {
  stopifnot(any(grepl("^sp$", names(censdata))))
  stopifnot(length(plot) == 1)
  stopifnot(is.character(plot))
  data.frame(
    sp = unique(censdata$sp), 
    plot = plot, 
    wsg = dnorm(1:length(unique(censdata$sp)))
  )
}
