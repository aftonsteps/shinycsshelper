#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  navbar <- callModule(module = mod_att_picker_server, 
                       id = "navbar",
                       att = list("background_color", 
                                  "border_color", 
                                  "border_width",
                                  "font_style"),
                       elem = ".navbar-default")
  
  slider_input <- callModule(module = mod_att_picker_server, 
                             id = "slider_input",
                             att = list("font_size"),
                             elem = ".irs-grid-text")
  
  callModule(mod_css_injector_server, 
             "css_injector", 
             css = list(navbar, slider_input))
  
}
