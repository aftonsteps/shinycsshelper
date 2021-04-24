set.seed(42)

lorem_text <- 
  lorem::ipsum(paragraphs = 1,
               sentences = 20)

usethis::use_data(lorem_text, overwrite = TRUE)