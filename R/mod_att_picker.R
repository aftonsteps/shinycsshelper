#' att_picker UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_att_picker_ui <- function(id, att){
  ns <- NS(id)
  tagList(
    create_ui_mods_from_list(att = att, ns = ns)
  )
}
    
#' att_picker Server Function
#'
#' @noRd 
mod_att_picker_server <- function(input, output, session, att, elem){
  ns <- session$ns
  
  att_mods <- create_server_mods_from_list(att)

  vals <- reactive({ 
    col_val <- unlist(lapply(att_mods, unwrap_vals))

    return(col_val) 
    })
  
  atts <- reactive({
    unwrapped_atts <- unlist(lapply(att_mods, unwrap_atts))
    
    return(unwrapped_atts)
  })
  
  return(list(elem = elem,
              atts = atts,
              vals = vals))
}
 
