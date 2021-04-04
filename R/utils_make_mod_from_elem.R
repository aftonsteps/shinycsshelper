#' Make mod UI from attent
#' 
#' Takes an attent name and returns the UI module function for that attent.
#'
#' @param att a character containing an HTML attent name
#'
#' @return
#' @export the mod UI function name associated with picking attibutes and 
#' values for that attent
#'
#' @examples
make_mod_ui_from_att <- function(att) {
  return(paste0("mod_", att, "_ui"))
}

make_mod_server_from_att <- function(att) {
  return(paste0("mod_", att, "_server"))
}

make_att_name_from_att <- function(att) {
  return(paste0("att_", att))
}

make_html_att_from_ns_tag <- function(att) {
  return(gsub(pattern = "_", replacement = "-", x = att))
}

create_ui_mods_from_list <- function(att, ns) {
  uis <- mapply(function(f, x) { f(x) },
                lapply(make_mod_ui_from_att(att), match.fun),
                ns(make_att_name_from_att(att)))
  return(uis)
}

create_server_mods_from_list <- function(att) {
  servers <- mapply(callModule, 
                    lapply(make_mod_server_from_att(att), match.fun), 
                    lapply(att, make_att_name_from_att),
                    SIMPLIFY = FALSE)
  
  return(servers)
}

unwrap_atts <- function(mod) {
  return(mod$atts)
}

unwrap_vals <- function(mod) {
  return(mod$vals())
}