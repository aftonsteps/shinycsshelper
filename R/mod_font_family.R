#' font_family UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_font_family_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(inputId = ns("font"),
                label = "Font Family",
                choices = FONTS,
                selected = "Open Sans")
  )
}
    
#' font_family Server Function
#'
#' @noRd 
mod_font_family_server <- function(input, output, session){
  ns <- session$ns
 
  vals <- reactive({ return(c(input$font)) })
  
  return(list(vals = vals,
              atts = c("font-family")))
}
    
## To be copied in the UI
# mod_font_family_ui("font_family_ui_1")
    
## To be copied in the server
# callModule(mod_font_family_server, "font_family_ui_1")
 
