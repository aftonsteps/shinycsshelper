#' color UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_color_ui <- function(id, value = "#121212"){
  ns <- NS(id)
  tagList(
    colourpicker::colourInput(inputId = ns("col"),
                              label = "Color", 
                              value = value,
                              allowTransparent = FALSE,
                              closeOnClick = TRUE)
  )
}
    
#' color Server Function
#'
#' @noRd 
mod_color_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ return(c(input$col)) })
  
  return(list(vals = vals,
              atts = c("color")))
}
    
## To be copied in the UI
# mod_color_ui("color_ui_1")
    
## To be copied in the server
# callModule(mod_color_server, "color_ui_1")
 
