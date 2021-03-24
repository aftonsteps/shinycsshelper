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
                              closeOnClick = TRUE)
  )
}
    
#' att_picker Server Function
#'
#' @noRd 
mod_att_picker_server <- function(input, output, session, element){
  ns <- session$ns
  
  col <- reactive({ return(input$col) })
  
  return(list(element = element,
              background_color = "background-color",
              col = col))
}
    
## To be copied in the UI
# mod_att_picker_ui("att_picker_ui_1")
    
## To be copied in the server
# callModule(mod_att_picker_server, "att_picker_ui_1")
 
