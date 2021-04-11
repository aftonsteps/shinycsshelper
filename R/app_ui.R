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
                        shinyjs::inlineCSS(FONT_IMPORT),
                        shinyjs::inlineCSS(list("body" = "font-family: 'Cookie', cursive;")),
                        mod_css_injector_ui("css_injector"),
                        sidebarLayout(
                          sidebarPanel = 
                            sidebarPanel(
                              shinyWidgets::switchInput(
                                inputId = "show_checkbox",
                                label = "Checkbox",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_checkbox",
                                mod_att_picker_ui(id = "checkbox",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))
                              ),
                              shinyWidgets::switchInput(
                                inputId = "show_checkbox_group",
                                label = "Checkbox Group",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_checkbox_group",
                                mod_att_picker_ui(id = "checkbox_group",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))
                                ),
                              shinyWidgets::switchInput(
                                inputId = "show_action_link",
                                label = "Action Link",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_action_link",
                                mod_att_picker_ui(id = "action_link",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "text_decoration"))
                              ),
                              shinyWidgets::switchInput(
                                inputId = "show_action_button",
                                label = "Action Button",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_action_button",
                                mod_att_picker_ui(id = "action_button",
                                                  att = list("color",
                                                             "background_color",
                                                             "border_color")),
                                mod_att_picker_ui(id = "action_button_text",
                                                  att = list("font_family",
                                                             "font_style")),
                                mod_att_picker_ui(id = "action_button_text_size",
                                                  att = list("padding",
                                                             "font_size"))
                              ),
                              shinyWidgets::switchInput(
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
                                                            "font_family",
                                                            "font_style")),
                                mod_att_picker_ui(id = "navbar_font_size",
                                                  att = list("font_size"))
                              ),
                              shinyWidgets::switchInput(
                                inputId = "show_slider_input",
                                label = "Slider Input",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_slider_input",
                                mod_att_picker_ui(id = "slider_input",
                                                  att= list("font_family",
                                                            "font_size",
                                                            "color")),
                                mod_att_picker_ui(id = "slider_bar",
                                                  att = list("background_color",
                                                             "border_color",
                                                             "border_width")),
                                mod_att_picker_ui(id = "slider_min",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "background_color")),
                                mod_att_picker_ui(id = "slider_max",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "background_color"))
                              )
                            ),
                          mainPanel = 
                            mainPanel(fluidRow(actionButton(inputId = "action_button_test",
                                                   label = "Action Button"),
                                               actionLink(inputId = "action_link_test",
                                                          label = "Action Link")),
                                      fluidRow(
                                        checkboxGroupInput(inputId = "checkbox_group_test",
                                                           label = "Checkbox Group Input",
                                                           choices = c("Option 1",
                                                                       "Option 2",
                                                                       "Option 3")),
                                        checkboxInput(inputId = "checkbox_text",
                                                      label = "Checkbox Input")
                                      ),
                                      sliderInput(inputId = "slider_test",
                                                  label = "Slider",
                                                  min = 0,
                                                  max = 10,
                                                  value = 5,
                                                  step = 1)
                          )
                        )
               ),
               tabPanel("Shiny Widgets"),
               tabPanel("Save Your CSS File",
                        mod_download_css_ui("style_css")),
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

