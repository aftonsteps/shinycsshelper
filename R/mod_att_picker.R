#' att_picker UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_att_picker_ui <- function(id, element){
  ns <- NS(id)
  tagList(
    HTML(element),
    colourpicker::colourInput(inputId = ns("col"), 
                              label = NULL, 
                              value = "#00FF0080",
                              allowTransparent = TRUE,
                              closeOnClick = TRUE),
    selectInput(inputId = ns("font_style"), 
                label = "Font Style",
                choices = c("regular", "italic", "oblique"),
                selected = "regular"),
    shinyWidgets::numericInputIcon(inputId = ns("margin"),
                                   label = "Margin",
                                   value = 0,
                                   min = 0,
                                   icon = list(NULL, "px")),
    shinyWidgets::numericInputIcon(inputId = ns("padding"),
                                   label = "Padding",
                                   value = 0,
                                   min = 0,
                                   icon = list(NULL, "px"))
  )
}
    
#' att_picker Server Function
#'
#' @noRd 
mod_att_picker_server <- function(input, output, session, element){
  ns <- session$ns
  
  vals <- reactive({ return(c(input$col, 
                              input$font_style,
                              add_px(input$margin),
                              add_px(input$padding))) })
  
  return(list(element = element,
              atts = c("background-color", 
                       "font-style", 
                       "margin", 
                       "padding"
                       ),
              vals = vals
              ))
}
    
## To be copied in the UI
# mod_att_picker_ui("att_picker_ui_1")
    
## To be copied in the server
# callModule(mod_att_picker_server, "att_picker_ui_1")
 
