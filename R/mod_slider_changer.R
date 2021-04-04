#' mod_slider_changer UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_slider_changer_ui <- function(id){
  ns <- NS(id)
  tagList(
    sliderInput(inputId = ns("slider-test"),
                label = "Slider",
                min = 0,
                max = 10,
                value = 5,
                step = 1),
    shinyWidgets::numericInputIcon(inputId = ns("irs_grid_text"),
                                   label = "Slider Text Size",
                                   value = 0,
                                   min = 0,
                                   icon = list(NULL, "pt"))
    
  )
}
    
#' mod_slider_changer Server Function
#'
#' @noRd 
mod_slider_changer_server <- function(input, output, session){
  ns <- session$ns
  
  vals <- reactive({ return(c(paste0(input$irs_grid_text, "pt"))) })
  
  return(list(element = ".irs-grid-text",
              atts = c("font-size"),
              vals = vals))
}
    
## To be copied in the UI
# mod_mod_slider_changer_ui("mod_slider_changer_ui_1")
    
## To be copied in the server
# callModule(mod_mod_slider_changer_server, "mod_slider_changer_ui_1")
 
