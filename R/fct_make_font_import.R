#' Make Font Import
#' 
#' Turns a vector of fonts into the font import line.
#'
#' @param fonts a vector of font names
#'
#' @return a string that can be used in a css file to import fonts
#' @export
make_font_import <- function(fonts) {
  font_import_string <-
    paste0(FONT_IMPORT_BEGIN,
           paste0(FONT_IMPORTS[names(FONT_IMPORTS) %in% fonts], collapse = "&"),
           FONT_IMPORT_END)
  
  return(font_import_string)
}
