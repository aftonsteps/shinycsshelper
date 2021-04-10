#' text_decoration UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_text_decoration_ui <- function(id){
  ns <- NS(id)
  tagList(
    selectInput(inputId = ns("text_decor_line"),
                label = "Text Decoration Line",
                choices = c("none",
                            "underline",
                            "underline overline"))
  )
}
    
#' text_decoration Server Function
#'
#' @noRd 
mod_text_decoration_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ 
    return(input$text_decor_line) 
  })
  
  return(list(vals = vals,
              atts = c("text-decoration")))
}
    
## To be copied in the UI
# mod_text_decoration_ui("text_decoration_ui_1")
    
## To be copied in the server
# callModule(mod_text_decoration_server, "text_decoration_ui_1")
 
