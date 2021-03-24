#' Unreactify
#' 
#' Returns the returned value of a reactive if the input arg is a reactive,
#' or simply returns its current value if not. This is useful for handling
#' returned lists of values from modules where some elements are reactive
#' but others are not. It may also be useful in cases where you want a module
#' to have the flexibility to use a reactive in some instances but a static 
#' value in others.
#'
#' @param elem 
#'
#' @return returned value of eleme if reactive, else elem
#' @export
#'
#' @examples
#' example_1 <- reactive({ return("tabby cats") })
#' example_2 <- "tuxedo cats"
#' unreactify(example_1)
#' unreactify(example_2)
unreactify <- function(elem) {
  if ("reactive" %in% class(elem)) {
    return(elem())
  } else return (elem)
}
