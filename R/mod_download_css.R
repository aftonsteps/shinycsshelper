#' download_css UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_download_css_ui <- function(id){
  ns <- NS(id)
  tagList(
    a(href="www/style.css", "Download CSS", download=NA, target="_blank")
  )
}
    
#' download_css Server Function
#'
#' @noRd 
mod_download_css_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_download_css_ui("download_css_ui_1")
    
## To be copied in the server
# callModule(mod_download_css_server, "download_css_ui_1")
 
