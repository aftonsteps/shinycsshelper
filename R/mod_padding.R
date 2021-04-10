#' padding UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_padding_ui <- function(id){
  ns <- NS(id)
  tagList(
    numericInput(inputId = ns('top'),
                 label = "Top Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('right'),
                 label = "Right Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('bottom'),
                 label = "Bottom Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('left'),
                 label = "Left Padding",
                 value = 0,
                 min = 0)
  )
}
    
#' padding Server Function
#'
#' @noRd 
mod_padding_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ 
    return(paste0(add_px(c(input$top, 
                           input$right, 
                           input$bottom, 
                           input$left)),
                  collapse = " ")) 
  })
  
  return(list(vals = vals,
              atts = c("padding")))
}
    
## To be copied in the UI
# mod_padding_ui("padding_ui_1")
