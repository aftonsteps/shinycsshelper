#' box shadow UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_box_shadow_ui <- function(id){
  ns <- NS(id)
  tagList(
    numericInput(inputId = ns("x_offset"),
                 label = "X Offset",
                 value = 0,
                 min = 0,
                 step = 1),
    numericInput(inputId = ns("y_offset"),
                 label = "Y Offset",
                 value = 0,
                 min = 0,
                 step = 1),
    numericInput(inputId = ns("blur_radius"),
                 label = "Blur Radius",
                 value = 8,
                 min = 0,
                 step = 1),
    numericInput(inputId = ns("spread_radius"),
                 label = "Spread Radius",
                 value = 0,
                 min = 0,
                 step = 1),
    colourpicker::colourInput(inputId = ns("col"),
                              label = "Shadow Color",
                              value = "#121212",
                              allowTransparent = TRUE)
  )
}
    
#' box shadow Server Function
#'
#' @noRd 
mod_box_shadow_server <- function(input, output, session){
  ns <- session$ns
 
  vals <- reactive({ 
    shadow_vals <- 
      paste0(c("inset", "0", "1px", "1px", "rgba(0,0,0,.075),",
               add_px(c(input$x_offset,
                        input$y_offset,
                        input$blur_radius,
                        input$spread_radius)),
               input$col),
             collapse = " ")
    
    return(c(shadow_vals, shadow_vals, 0)) 
  })
  
  return(list(vals = vals,
              atts = c("box-shadow",
                       "-webkit-box-shadow",
                       "outline")))
}