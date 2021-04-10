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
                                  "font_family",
                                  "font_style"),
                       elem = ".navbar-default")
  
  slider_input_text <- callModule(module = mod_att_picker_server, 
                                  id = "slider_input",
                                  att = list("font_family",
                                             "font_size",
                                             "color"),
                                  elem = ".irs--shiny .irs-grid-text")
  
  slider_input_bar <- callModule(module = mod_att_picker_server,
                                 id = "slider_bar",
                                 att = list("background_color",
                                            "border_color",
                                            "border_width"),
                                 elem = ".irs--shiny .irs-bar")
  
  slider_input_min <- callModule(module = mod_att_picker_server,
                                 id = "slider_min",
                                 att = list("color",
                                            "font_family",
                                            "font_size",
                                            "background_color"),
                                 elem = ".irs--shiny .irs-min, .irs--shiny")
  
  slider_input_max <- callModule(module = mod_att_picker_server,
                                 id = "slider_max",
                                 att = list("color",
                                            "font_family",
                                            "font_size",
                                            "background_color"),
                                 elem = ".irs--shiny .irs-max, .irs--shiny")
  ## TODO add border-radius
  ## TODO gradients? :D :D :D :D background: linear-gradient(90deg, minColor, maxColor)
  
  callModule(mod_css_injector_server, 
             "css_injector", 
             css = list(navbar, 
                        slider_input_text, 
                        slider_input_bar,
                        slider_input_min,
                        slider_input_max))
  
}
