#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here 
    navbarPage("CSS Helper",
               tabPanel("Base Shiny",
                        mod_css_injector_ui("css_injector"),
                        sidebarLayout(
                          sidebarPanel = 
                            sidebarPanel(shinyWidgets::switchInput(
                                           inputId = "show_navbar",
                                           label = "Navbar",
                                           onLabel = "Show",
                                           offLabel = "Hide"
                                         ),
                                         conditionalPanel(
                                           condition = "input.show_navbar",
                                           mod_att_picker_ui(id = "navbar",
                                                             att= list("background_color",
                                                                       "border_color",
                                                                       "border_width",
                                                                       "font_style"))
                                         )
                            ),
                          mainPanel = 
                            mainPanel(mod_slider_changer_ui("slider_changer")
                          )
                        )
               ),
               tabPanel("Shiny Widgets"),
               tabPanel("Save Your CSS File"),
               navbarMenu("More",
                          tabPanel("Sub-Component A"),
                          tabPanel("Sub-Component B"))
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'shinycssavoider'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

