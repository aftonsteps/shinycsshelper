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
    shinyjs::inlineCSS(FONT_IMPORT_ALL),
    mod_css_injector_ui("css_injector"),
    navbarPage("CSS Helper",
               tabPanel("Style Shiny Inputs",
                        sidebarLayout(
                          sidebarPanel = 
                            sidebarPanel(
                              shinyWidgets::switchInput(
                                inputId = "show_navbar",
                                label = "Navbar",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_navbar",
                                h4("Navbar"),
                                mod_att_picker_ui(id = "navbar",
                                                  att = list(c("background_color", "#000000"),
                                                             c("border_color", "#000000"),
                                                             c("border_width"),
                                                             "font_family",
                                                             "font_style")),
                                mod_att_picker_ui(id = "navbar_font_size",
                                                  att = list("font_size")),
                                h4("Navbar Hover-Over"),
                                mod_att_picker_ui(id = "navbar_hover",
                                                  att = list(c("color", "#000"),
                                                             c("background_color", "#00D5FFDD"),
                                                             c("border_color", "#CCC"))),
                                h4("Navbar Selected"),
                                mod_att_picker_ui(id = "navbar_selected",
                                                  att = list(c("color", "#00D5FFDD"),
                                                             c("background_color", "#FFF"),
                                                             c("border_color", "#00D5FFDD")))),
                              shinyWidgets::switchInput(
                                inputId = "show_action_button",
                                label = "Action Button",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                condition = "input.show_action_button",
                                HTML("Action Button"),
                                mod_att_picker_ui(id = "action_button",
                                                  att = list("color",
                                                             "background_color",
                                                             "border_color")),
                                HTML("Action Button Text"),
                                mod_att_picker_ui(id = "action_button_text",
                                                  att = list("font_family",
                                                             "font_style")),
                                mod_att_picker_ui(id = "action_button_text_size",
                                                  att = list("padding",
                                                             "font_size")),
                                HTML("Action Button Hover"),
                                mod_att_picker_ui(id = "action_button_hover",
                                                  att = list("color",
                                                             c("background_color", "#808080"),
                                                             "border_color"))),
                              shinyWidgets::switchInput(
                                inputId = "show_action_link",
                                label = "Action Link",
                                onLabel = "Show",
                                offLabel = "Hide"
                              ),
                              conditionalPanel(
                                h4("Action Link"),
                                condition = "input.show_action_link",
                                mod_att_picker_ui(id = "action_link",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "text_decoration")),
                                h4("Action Link Hover-Over"),
                                mod_att_picker_ui(id = "action_link_hover",
                                                  att = list(c("color", "#00D5FF80"),
                                                             "font_size",
                                                             "text_decoration"))),
                              shinyWidgets::switchInput(
                                inputId = "show_checkbox_group",
                                label = "Checkbox Group",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_checkbox_group",
                                mod_att_picker_ui(id = "checkbox_group",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))),
                              shinyWidgets::switchInput(
                                inputId = "show_radio_buttons",
                                label = "Radio Buttons",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_radio_buttons",
                                mod_att_picker_ui(id = "radio_buttons",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))),
                              shinyWidgets::switchInput(
                                inputId = "show_checkbox",
                                label = "Checkbox",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_checkbox",
                                mod_att_picker_ui(id = "checkbox",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))),
                              shinyWidgets::switchInput(
                                inputId = "show_select_input",
                                label = "Select/Selectize",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_select_input",
                                mod_att_picker_ui(id = "select_input",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size"))),
                              shinyWidgets::switchInput(
                                inputId = "show_date",
                                label = "Date Input",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_date",
                                h4("Date Picker Input Box"),
                                mod_att_picker_ui(id = "date",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size")),
                                h4("Date Picker Calendar"),
                                mod_att_picker_ui(id = "date_calendar",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size")),
                                h4("Calendar Hover-Over"),
                                mod_att_picker_ui(id = "date_calendar_current",
                                                  att = list("color",
                                                             "background_color",
                                                             "font_style")),
                                h4("Calendar Old Days"),
                                mod_att_picker_ui( id = "date_calendar_old",
                                                   att = list("color",
                                                              "font_style")),
                                h4("Calendar Old Days Hover-Over"),
                                mod_att_picker_ui(id = "date_calendar_old_hover",
                                                  att = list("color",
                                                             "background_color",
                                                             "font_style")),
                                h4("Calendar Active Day"),
                                mod_att_picker_ui(id = "date_calendar_active",
                                                  att = list("color",
                                                             "background_color",
                                                             "font_style")),
                                h4("Calendar Active Day Hover-Over"),
                                mod_att_picker_ui(id = "date_calendar_active_hover",
                                                  att = list("color",
                                                             "background_color",
                                                             "font_style")),
                                h4("Calendar Future Days"),
                                mod_att_picker_ui(id = "date_calendar_new",
                                                  att = list("color",
                                                             "font_style")),
                                h4("Calendar Future Days Hover-Over"),
                                mod_att_picker_ui(id = "date_calendar_future_hover",
                                                  att = list("color",
                                                             "background_color",
                                                             "font_style")),
                              ),
                              shinyWidgets::switchInput(
                                inputId = "show_slider_input",
                                label = "Slider Input",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_slider_input",
                                h4("Slider Tick Text"),
                                mod_att_picker_ui(id = "slider_input",
                                                  att= list("font_family",
                                                            "font_size",
                                                            "color")),
                                h4("Slider Background"),
                                mod_att_picker_ui(id = "slider_background",
                                                  att= list(c("background_color", "#FFFFFF"))),
                                h4("Slider Bar"),
                                mod_att_picker_ui(id = "slider_bar",
                                                  att = list("background_color",
                                                             "border_color",
                                                             "border_width")),
                                h4("Slider Min"),
                                mod_att_picker_ui(id = "slider_min",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "background_color")),
                                h4("Slider Current Value"),
                                mod_att_picker_ui(id = "slider_current",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "background_color")),
                                h4("Slider Max"),
                                mod_att_picker_ui(id = "slider_max",
                                                  att = list("color",
                                                             "font_family",
                                                             "font_size",
                                                             "background_color"))),
                              shinyWidgets::switchInput(
                                inputId = "show_file_upload",
                                label = "File Upload",
                                onLabel = "Show",
                                offLabel = "Hide"),
                              conditionalPanel(
                                condition = "input.show_file_upload",
                                mod_att_picker_ui(id = "file_upload",
                                                  att = list("font_family",
                                                             "font_size"))),
                            ),
                          mainPanel = 
                            mainPanel(
                              HTML("<div style = 'position: fixed; top: 60px;'>"),
                              fluidRow(
                                column(
                                  width = 2,
                                  actionButton(inputId = "action_button_test",
                                               label = "Action Button")
                                ),
                                column(
                                  width = 2,
                                  actionLink(inputId = "action_link_test",
                                             label = "Action Link")
                                )
                              ),
                              HTML("<hr/>"),
                              fluidRow(
                                column(
                                  width = 3,
                                  checkboxGroupInput(inputId = "checkbox_group_test",
                                                     label = "Checkbox Group Input",
                                                     choices = c("Option 1",
                                                                 "Option 2",
                                                                 "Option 3"))
                                ),
                                column(
                                  width = 3,
                                  radioButtons(inputId = "radio_test",
                                               label = "Radio Buttons",
                                               choices = c("Choice 1",
                                                           "Choice 2",
                                                           "Choice 3"),
                                               selected = "Choice 1")
                                ),
                                column(
                                  width = 5,
                                  fluidRow(                                
                                    checkboxInput(inputId = "checkbox_test",
                                                  label = "Checkbox Input")
                                  ),
                                  fluidRow(
                                    selectInput(inputId = "select_input_test",
                                                label = "Select Input",
                                                choices = c("Option 1",
                                                            "Option 2",
                                                            "Option 3"))
                                  )
                                )
                              ),
                              HTML("<hr/>"),
                              fluidRow(
                                column(
                                  width = 4,
                                  dateInput(inputId = "date_test",
                                            label = "Date Input")
                                ),
                                column(
                                  width = 4,
                                  sliderInput(inputId = "slider_test",
                                              label = "Slider",
                                              min = 0,
                                              max = 10,
                                              value = 5,
                                              step = 1)
                                )
                              ),
                              HTML("<hr/>"),
                              fluidRow(
                                column(
                                  width = 5,
                                  fileInput(inputId = "file_input_test",
                                            label = "File Input")
                                ),
                                column(
                                  width = 4,
                                  selectizeInput(inputId = "selectize_input_test",
                                                 label = "Selectize Input",
                                                 choices = c("Option 1",
                                                             "Option 2",
                                                             "Option 3"),
                                                 multiple = TRUE)
                                )
                              ),
                            )
                        ),
                        HTML("</div>"),
               ),
               tabPanel("Style Text Elements",
                        sidebarLayout(
                          sidebarPanel(
                            shinyWidgets::switchInput(inputId = "show_h1",
                                                      label = "H1",
                                                      onLabel = "Show",
                                                      offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_h1",
                              mod_att_picker_ui(id = "h1",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           c("font_size", 36)))),
                            shinyWidgets::switchInput(
                              inputId = "show_h2",
                              label = "H2",
                              onLabel = "Show",
                              offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_h2",
                              mod_att_picker_ui(id = "h2",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           c("font_size", 28)))),
                            shinyWidgets::switchInput(
                              inputId = "show_h3",
                              label = "H3",
                              onLabel = "Show",
                              offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_h3",
                              mod_att_picker_ui(id = "h3",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           c("font_size", 20)))),
                            shinyWidgets::switchInput(
                              inputId = "show_h4",
                              label = "H4",
                              onLabel = "Show",
                              offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_h4",
                              mod_att_picker_ui(id = "h4",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           c("font_size", 12)))),
                            shinyWidgets::switchInput(
                              inputId = "show_p",
                              label = "paragraph",
                              onLabel = "Show",
                              offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_p",
                              mod_att_picker_ui(id = "p",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           "font_size"))),
                            shinyWidgets::switchInput(
                              inputId = "show_body",
                              label = "body",
                              onLabel = "Show",
                              offLabel = "Hide"),
                            conditionalPanel(
                              condition = "input.show_body",
                              mod_att_picker_ui(id = "body",
                                                att = list("color",
                                                           c("background_color", "#FFFFFF"),
                                                           "font_family",
                                                           "font_style",
                                                           "font_size")))
                          ),
                          mainPanel(
                            fluidRow(
                              column(
                                width = 2,
                                h1("H1 Text"),
                              ),
                              column(
                                width = 2,
                                h2("H2 Text"),
                              ),
                              column(
                                width = 2,
                                h3("H3 Text")
                              ),
                              column(
                                width = 2,
                                h4("H4 Text")
                              )
                            ),
                            HTML("<hr/>"),
                            fluidRow(
                              HTML(paste0("<p>", LOREM_TEXT, "</p>"))
                            )
                          )
                        )
               ),
               tabPanel("Save Your CSS File",
                        mod_download_css_ui("style_css"))
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

