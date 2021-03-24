#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  navbar <- callModule(module = mod_att_picker_server, 
                       id = "navbar",
                       element = ".navbar-default")
  
  callModule(mod_css_injector_server, "css_injector", navbar = navbar)
}
