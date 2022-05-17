## code to prepare `london_info` dataset goes here
library(readr)
library(dplyr)

canada_info <- read_csv("https://figshare.com/ndownloader/files/7825783",
                        col_types = cols(
                          id = col_character(),
                          sex = col_factor(levels = c("female", "male")),
                          age = col_integer()
                        )) |>
  select(face_id = id, face_age = age, face_gender = sex)

readr::write_csv(canada_info, "data-raw/canada_info.csv")

usethis::use_data(canada_info, overwrite = TRUE)
