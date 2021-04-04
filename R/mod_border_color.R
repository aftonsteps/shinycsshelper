#' border_color UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_border_color_ui <- function(id){
  ns <- NS(id)
  tagList(
    colourpicker::colourInput(inputId = ns("col"),
                              label = "Border Color", 
                              value = "#00FF0080",
                              allowTransparent = TRUE,
                              closeOnClick = TRUE),
  )
}
    
#' border_color Server Function
#'
#' @noRd 
mod_border_color_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ return(c(input$col)) })
  
  return(list(vals = vals,
              atts = c("border-color")))
}
    
## To be copied in the UI
# mod_border_color_ui("border_color_ui_1")
    
## To be copied in the server
# callModule(mod_border_color_server, "border_color_ui_1")
 
