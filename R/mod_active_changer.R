#' active_changer UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_active_changer_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' active_changer Server Function
#'
#' @noRd 
mod_active_changer_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_active_changer_ui("active_changer_ui_1")
    
## To be copied in the server
# callModule(mod_active_changer_server, "active_changer_ui_1")
 
