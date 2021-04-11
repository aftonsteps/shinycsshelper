#' font_style UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_font_style_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(inputId = ns("style"), 
                label = "Font Style",
                choices = c("normal", "italic", "oblique"),
                selected = "normal")
  )
}
    
#' font_style Server Function
#'
#' @noRd 
mod_font_style_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ return(c(input$style)) })
  
  return(list(vals = vals,
              atts = c("font-style")))
}
    
## To be copied in the UI
# mod_font_style_ui("font_style_ui_1")
    
## To be copied in the server
# callModule(mod_font_style_server, "font_style_ui_1")
 
