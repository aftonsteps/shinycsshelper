#' Add px
#' 
#' Just adds " px" to the end of the input value
#'
#' @param val a value of type character or which can be coerced to type character
#'
#' @return the value with " px" appended
#' @export
#'
#' @examples
#' add_px(10)
add_px <- function(val) {
  return(paste0(val, "px"))
}