#' css_injector UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_css_injector_ui <- function(id){
  ns <- NS(id)
  tagList(
    uiOutput(ns("css_header")),
  )
}
    
#' css_injector Server Function
#'
#' @noRd 
mod_css_injector_server <- function(input, output, session, navbar){
  ns <- session$ns
  
  css_agg <- reactive({
    css_to_write <- tableHTML::make_css(lapply(navbar, unreactify),
                                        file = "data/style.css")
    css_to_render <- tableHTML::make_css(lapply(navbar, unreactify))
    return(css_to_render)
  })
  
  output$css_header <- renderUI({
    req(css_agg())
    return(shinyjs::inlineCSS(css_agg()))
  })
}
    
## To be copied in the UI
# mod_css_injector_ui("css_injector_ui_1")
    
## To be copied in the server
# callModule(mod_css_injector_server, "css_injector_ui_1")
 
