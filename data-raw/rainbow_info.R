rainbow_info <- readr::read_csv("inst/rainbow/_info.csv",
                                col_types = cols(
                                  photo_name = col_character(),
                                  photo_id = col_integer(),
                                  photographer = col_character(),
                                  user_name = col_character(),
                                  user_id = col_integer(),
                                  colour = col_factor(c("red", "orange", "yellow","green", "blue", "purple")),
                                  type = col_factor(c("animal", "flower", "landscape")),
                                  url = col_character()
                                ))
usethis::use_data(rainbow_info, overwrite = TRUE)
