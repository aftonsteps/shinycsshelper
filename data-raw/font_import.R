CSS_FILE <- "inst/app/www/style.css"

FONTS <-
  c("Cookie",
    "Noto Sans TC",
    "Open Sans",
    "Quicksand",
    "Fredericka the Great",
    "Codystar",
    "Faster One",
    "Train One",
    "Homemade Apple",
    "Rye",
    "Wallpoet",
    "Monsieur La Doulaise",
    "Sail",
    "Happy Monkey",
    "Akronim",
    "Mystery Quest")

FONT_IMPORT_BEGIN <- "@import url('https://fonts.googleapis.com/css2?"

FONT_IMPORT_END <- "');\n"

FONT_IMPORTS <- 
  c("Codystar" = "family=Codystar",
    "Cookie" = "family=Cookie",
    "Faster One" = "family=Faster+One",
    "Fredericka the Great" = "family=Fredericka+the+Great",
    "Noto Sans TC" = "family=Noto+Sans+TC:wght@100",
    "Open Sans" = "family=Open+Sans:wght@300",
    "Quicksand" = "family=Quicksand:wght@300&display=swap",
    "Train One" = "family=Train+One&display=swap",
    "Homemade Apple" = "family=Homemade+Apple",
    "Rye" = "family=Rye",
    "Wallpoet" = "family=Wallpoet&display=swap",
    "Monsieur La Doulaise" = "family=Monsieur+La+Doulaise&display=swap",
    "Sail" = "family=Sail&display=swap",
    "Happy Monkey" = "family=Happy+Monkey&display=swap",
    "Akronim" = "family=Akronim",
    "Mystery Quest" = "family=Mystery+Quest&display=swap")

FONT_IMPORT_ALL <-
  paste0("@import url(",
         "'https://fonts.googleapis.com/css2?",
         "family=Codystar&family=Cookie&family=Faster+One&",
         "family=Fredericka+the+Great&family=Noto+Sans+TC:wght@100&",
         "family=Open+Sans:wght@300&family=Quicksand:wght@300&display=swap&",
         "family=Train+One&display=swap&",
         "family=Homemade+Apple&",
         "family=Rye&",
         "family=Wallpoet&display=swap&",
         "family=Monsieur+La+Doulaise&display=swap&",
         "family=Sail&display=swap&",
         "family=Happy+Monkey&display=swap&",
         "family=Akronim&",
         "family=Mystery+Quest&display=swap'",
         ");\n")

usethis::use_data(CSS_FILE, overwrite = TRUE)
usethis::use_data(FONT_IMPORTS, overwrite = TRUE)
usethis::use_data(FONT_IMPORT_BEGIN, overwrite = TRUE)
usethis::use_data(FONT_IMPORT_END, overwrite = TRUE)
usethis::use_data(FONTS, overwrite = TRUE)
usethis::use_data(FONT_IMPORT_ALL, overwrite = TRUE)
