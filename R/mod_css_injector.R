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
mod_css_injector_server <- function(input, output, session, css){
  ns <- session$ns
  
   css_agg <- reactive({
     css_list <- nested_unreactify(css)
     
     write(x = FONT_IMPORT, file = CSS_FILE)
     
     css_to_render <- do.call(what = tableHTML::make_css, args = css_list)
     
     write(x = css_to_render, file = CSS_FILE, append = TRUE)
     
     return(css_to_render)
   })
  
  output$css_header <- renderUI({
    req(css_agg())
    
    css_to_inject <-
      paste0("<style>@import url('https://fonts.googleapis.com/css2?family=Cookie&family=Train+One&display=swap');</style>",
             "body {font-family: 'Cookie', cursive;} ",
             css_agg())

    return(shinyjs::inlineCSS(css_agg()))
  })
}
    
## To be copied in the UI
# mod_css_injector_ui("css_injector_ui_1")
    
## To be copied in the server
# callModule(mod_css_injector_server, "css_injector_ui_1")
 
