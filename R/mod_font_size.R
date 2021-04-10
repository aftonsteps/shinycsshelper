#' font_size UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_font_size_ui <- function(id){
  ns <- NS(id)
  tagList(
    shinyWidgets::numericInputIcon(inputId = ns("font_size"),
                                   label = "Font Size",
                                   value = 12,
                                   min = 0,
                                   icon = list(NULL, "pt"))
  )
}
    
#' font_size Server Function
#'
#' @noRd 
mod_font_size_server <- function(input, output, session){
  ns <- session$ns
 
  vals <- reactive({ return(c(paste0(input$font_size, "pt"))) })
  
  return(list(atts = c("font-size"),
              vals = vals))
}
    
## To be copied in the UI
# mod_font_size_ui("font_size_ui_1")
    
## To be copied in the server
# callModule(mod_font_size_server, "font_size_ui_1")
 
