#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  navbar <- callModule(module = mod_att_picker_server, 
                       id = "navbar",
                       att = list("background_color", 
                                  "border_color", 
                                  "border_width",
                                  "font_family",
                                  "font_style"),
                       elem = ".navbar-default")
  
  navbar_font_size <- callModule(module = mod_att_picker_server,
                            id = "navbar_font_size",
                            att = list("font_size"),
                            elem = ".navbar-default .navbar-nav>li>a")
  
  slider_input_text <- callModule(module = mod_att_picker_server, 
                                  id = "slider_input",
                                  att = list("font_family",
                                             "font_size",
                                             "color"),
                                  elem = ".irs--shiny .irs-grid-text")
  
  slider_input_bar <- callModule(module = mod_att_picker_server,
                                 id = "slider_bar",
                                 att = list("background_color",
                                            "border_color",
                                            "border_width"),
                                 elem = ".irs--shiny .irs-bar")
  
  slider_input_min <- callModule(module = mod_att_picker_server,
                                 id = "slider_min",
                                 att = list("color",
                                            "font_family",
                                            "font_size",
                                            "background_color"),
                                 elem = ".irs--shiny .irs-min, .irs--shiny")
  
  slider_input_max <- callModule(module = mod_att_picker_server,
                                 id = "slider_max",
                                 att = list("color",
                                            "font_family",
                                            "font_size",
                                            "background_color"),
                                 elem = ".irs--shiny .irs-max, .irs--shiny")
  
  action_button <- callModule(module = mod_att_picker_server,
                              id = "action_button",
                              att = list("color",
                                         "background_color",
                                         "border_color"),
                              elem = ".btn-default")
  
  action_button_text <- callModule(module = mod_att_picker_server,
                                   id = "action_button_text",
                                   att = list("font_family",
                                              "font_style"),
                                   elem = "button")
  
  action_button_text_size <- callModule(module = mod_att_picker_server,
                                   id = "action_button_text_size",
                                   att = list("padding",
                                              "font_size"),
                                   elem = ".btn")
  
  action_link <- callModule(module = mod_att_picker_server,
                            id = "action_link",
                            att = list("color",
                                       "font_family",
                                       "font_size",
                                       "text_decoration"),
                            elem = "a.action-button")
  
  checkbox_group_input <- callModule(module = mod_att_picker_server,
                                     id = "checkbox_group",
                                     att = list("color",
                                                "font_family",
                                                "font_size"),
                                     elem = ".shiny-input-checkboxgroup")
  
  checkbox_input <- callModule(module = mod_att_picker_server,
                               id = "checkbox",
                               att = list("color",
                                          "font_family",
                                          "font_size"),
                               elem = ".checkbox")
  
  date_input <- callModule(module = mod_att_picker_server,
                           id = "date",
                           att = list("color",
                                      "font_family",
                                      "font_size"),
                           elem = ".shiny-date-input,.shiny-date-input>.form-control")
  
  date_calendar <- callModule(module = mod_att_picker_server,
                              id = "date_calendar",
                              att = list("color",
                                         "font_family",
                                         "font_size"),
                              elem = ".datepicker-days")
  
  date_calendar_current_days <- callModule(module = mod_att_picker_server,
                                           id = "date_calendar_current",
                                           att = list("color",
                                                      "background_color",
                                                      "font_style"),
                                           elem = ".datepicker table tr td.day:hover")
  
  date_calendar_old_days <- callModule(module = mod_att_picker_server,
                                       id = "date_calendar_old",
                                       att = list("color",
                                                  "font_style"),
                                       elem = ".datepicker table tr td.old")
  
  date_calendar_new_days <- callModule(module = mod_att_picker_server,
                                       id = "date_calendar_new",
                                       att = list("color",
                                                  "font_style"),
                                       elem = ".datepicker table tr td.new")
  
  date_calendar_active_day <- callModule(module = mod_att_picker_server,
                                       id = "date_calendar_active",
                                       att = list("color",
                                                  "background_color",
                                                  "font_style"),
                                       elem = ".datepicker table tr td.active:active, .datepicker table tr td.active.active, .datepicker table tr td.active.highlighted:active, .datepicker table tr td.active.highlighted.active")
  
  date_calendar_active_day_hover <- callModule(module = mod_att_picker_server,
                                                id = "date_calendar_active_hover",
                                                att = list("color",
                                                           "background_color",
                                                           "font_style"),
                                                elem = ".datepicker table tr td.active.active:hover")
  
  date_calendar_old_day_hover <- callModule(module = mod_att_picker_server,
                                               id = "date_calendar_old_hover",
                                               att = list("color",
                                                          "background_color",
                                                          "font_style"),
                                               elem = ".datepicker table tr td.old:hover")
  
  date_calendar_future_day_hover <- callModule(module = mod_att_picker_server,
                                               id = "date_calendar_future_hover",
                                               att = list("color",
                                                          "background_color",
                                                          "font_style"),
                                               elem = ".datepicker table tr td.new:hover")
  
  ## TODO add border-radius
  ## TODO gradients? :D :D :D :D background: linear-gradient(90deg, minColor, maxColor)
  
  callModule(mod_css_injector_server, 
             "css_injector", 
             css = list(action_link,
                        navbar, 
                        navbar_font_size,
                        slider_input_text, 
                        slider_input_bar,
                        slider_input_min,
                        slider_input_max,
                        action_button,
                        action_button_text,
                        action_button_text_size,
                        checkbox_group_input,
                        checkbox_input,
                        date_input,
                        date_calendar,
                        date_calendar_current_days,
                        date_calendar_old_days,
                        date_calendar_new_days,
                        date_calendar_active_day,
                        date_calendar_active_day_hover,
                        date_calendar_old_day_hover,
                        date_calendar_future_day_hover
                        ))
  
}
