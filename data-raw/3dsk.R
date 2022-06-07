library(tidyverse)
# https://osf.io/a3947/

men <- list.files("data-raw/3dsk", "_men_", full.names = TRUE) |>
  readr::read_csv(id = "path") |>
  mutate(path = gsub('data-raw/3dsk/3dsk_men_', '', path, fixed = TRUE),
         path = gsub('\\.csv', '', path),
         face_sex = "male",
         rater_id = faux::make_id(1:1000, prefix = "R")) |>
  pivot_longer(cols = alex:vlastimil,
               names_to = "face_id",
               values_to = "rating") |>
  select(face_id, face_gender = face_sex, rater_id, rater_gender = sex, rater_age = age, trait = path, rating) |>
  mutate(trait = ifelse(trait == "masc", "sexdim", trait))

women <- list.files("data-raw/3dsk", "_women_", full.names = TRUE) |>
  readr::read_csv(id = "path") |>
  mutate(path = gsub('data-raw/3dsk/3dsk_women_', '', path, fixed = TRUE),
         path = gsub('\\.csv', '', path),
         face_sex = "female",
         rater_id = faux::make_id(1001:2000, prefix = "R")) |>
  pivot_longer(cols = agata:zora,
               names_to = "face_id",
               values_to = "rating") |>
  select(face_id, face_gender = face_sex, rater_id, rater_gender = sex, rater_age = age, trait = path, rating) |>
  mutate(trait = ifelse(trait == "fem", "sexdim", trait))

age_data <- read_csv("data-raw/3dsk/age_data.csv") |>
  select(face_id = face, face_age = age)


raw_3dsk_info <- bind_rows(men, women) |>
  left_join(age_data, by = 'face_id') |>
  select(face_id, face_gender, face_age,
         rater_id, rater_gender, rater_age,
         trait, rating)
readr::write_csv(raw_3dsk_info, "data-raw/raw_3dsk_info.csv")
usethis::use_data(raw_3dsk_info, overwrite = TRUE)

avg_3dsk_info <- raw_3dsk_info |>
  group_by(face_id, face_gender, face_age, trait) |>
  summarise(rating = mean(rating, na.rm = TRUE),
            .groups = 'drop') |>
  pivot_wider(names_from = trait,
              values_from = rating) |>
  arrange(face_gender, face_id)

readr::write_csv(avg_3dsk_info, "data-raw/avg_3dsk_info")
usethis::use_data(avg_3dsk_info, overwrite = TRUE)

