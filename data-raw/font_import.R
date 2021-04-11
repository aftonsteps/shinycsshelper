CSS_FILE <- "inst/app/www/style.css"

FONTS <-
  c("Cookie",
    "Noto Sans TC",
    "Open Sans",
    "Quicksand",
    "Fredericka the Great",
    "Codystar",
    "Faster One")

FONT_IMPORT <-
  paste0("@import url(",
         "'https://fonts.googleapis.com/css2?",
         "family=Codystar&family=Cookie&family=Faster+One&",
         "family=Fredericka+the+Great&family=Noto+Sans+TC:wght@100&",
         "family=Open+Sans:wght@300&family=Quicksand:wght@300&display=swap'",
         ");\n")

usethis::use_data(CSS_FILE, overwrite = TRUE)
usethis::use_data(FONT_IMPORT, overwrite = TRUE)
usethis::use_data(FONTS, overwrite = TRUE)
