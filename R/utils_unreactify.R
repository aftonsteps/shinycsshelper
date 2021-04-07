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

#' Nested Unreactify
#' 
#' This function is useful for when you have a list of lists, and you want
#' to unreactify the elements of the second-level lists.
#'
#' @param x a list of lists, where the lower-level list contains some reactive
#' elements.
#'
#' @return a list of lists where the lower-level list of reactives has been
#' evaluated
#' @export
nested_unreactify <- function(x) {
  x_list <- list()
  for (idx in 1:length(x)) {
    x_list <- c(x_list, list(lapply(x[[idx]], unreactify)))
  }
  
  return(x_list)
}