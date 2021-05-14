set.seed(42)

LOREM_TEXT <- 
  lorem::ipsum(paragraphs = 1,
               sentences = 20)

usethis::use_data(LOREM_TEXT, overwrite = TRUE)