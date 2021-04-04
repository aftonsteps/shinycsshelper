#' border_width UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_border_width_ui <- function(id){
  ns <- NS(id)
  tagList(
    numericInput(inputId = ns('top'),
                 label = "Top Border Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('right'),
                 label = "Right Border Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('bottom'),
                 label = "Bottom Border Padding",
                 value = 0,
                 min = 0),
    numericInput(inputId = ns('left'),
                 label = "Left Border Padding",
                 value = 0,
                 min = 0)
  )
}
    
#' border_width Server Function
#'
#' @noRd 
mod_border_width_server <- function(input, output, session){
  ns <- session$ns
 
  vals <- reactive({ 
    return(paste0(add_px(c(input$top, 
                           input$right, 
                           input$bottom, 
                           input$left)),
                  collapse = " ")) 
    })
  
  return(list(vals = vals,
              atts = c("border-width")))
}
    
## To be copied in the UI
# mod_border_width_ui("border_width_ui_1")
    
## To be copied in the server
# callModule(mod_border_width_server, "border_width_ui_1")
 
