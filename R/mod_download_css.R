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
    HTML("<div style = 'font-size: 30pt;'>"),
    a(href="www/style.css", "Download CSS", download=NA, target="_blank"),
    HTML("</div>"),
    HTML("<hr/>"),
    HTML("<div style = 'font-size: 18pt;'>"),
    HTML("Instructions:<br>"),
    HTML("Download the .css file from the link above, and place it in inside a folder www/ in your Shiny app.<br>"),
    HTML("Then include a tag$link in your UI file, like so:<br>"),
    HTML("</div>"),
    helpText(code('ui <- fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "style.css")
  )
  ...
)')),
    HTML("<div style = 'font-size: 18pt;'>"),
    HTML("See <a href = 'https://shiny.rstudio.com/articles/css.html'>RStudio</a> for more info!"),
    HTML("</div>")
  )
}
    
#' download_css Server Function
#'
#' @noRd 
mod_download_css_server <- function(input, output, session){
  ns <- session$ns
 
}
 
