#' Get Fonts
#' 
#' Extracts fonts from the css list
#'
#' @param css_list the list of css elements, where each element is a list
#' containing a vector of attributes and a vector of values
#'
#' @return the unique font families used
#' @export
get_fonts <- function(css_list) {
  fonts <- c()
  for (i in 1:length(css_list)) {
    if("font-family" %in% css_list[[i]]$atts) {
      idx <- which(css_list[[i]]$atts == "font-family")
      fonts <- c(fonts, css_list[[i]]$vals[idx])
    }
  }
  return(unique(fonts))
}
