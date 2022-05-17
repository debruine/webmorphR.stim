library(webmorphR)

## london composite
read_stim("inst/london/")  |>
  setnames(pattern = "_03", replacement = "") |>
  mlabel(gravity = "northwest",
         location = "+20+10",
         size = 200,
         strokecolor = "white") |>
  plot(padding = 5, maxwidth = 1000, nrow = 6) |>
  write_stim("man/figures/", "london", "jpg")

## smiling composite
read_stim("inst/smiling/")  |>
  setnames(pattern = "_08", replacement = "") |>
  mlabel(gravity = "northwest",
         location = "+20+10",
         size = 200,
         strokecolor = "white") |>
  plot(padding = 5, maxwidth = 1000, nrow = 6) |>
  write_stim("man/figures/", "smiling", "jpg",
             overwrite = TRUE)

## canada composite
read_stim("inst/canada/")  |>
  mlabel(gravity = "northwest",
         location = "+20+10",
         strokecolor = "white") |>
  plot(padding = 5, maxwidth = 1000, nrow = 4) |>
  write_stim("man/figures/", "canada", "jpg")

## composite composite
read_stim("inst/composite/")  |>
  mlabel(gravity = "northwest",
         location = "+20+10",
         size = 150,
         strokecolor = "white") |>
  plot(padding = 5, maxwidth = 1000, nrow = 2) |>
  write_stim("man/figures/", "composite", "jpg",
             overwrite = TRUE)

## zoom composite
read_stim("inst/zoom/")  |>
  mlabel(gravity = "northwest",
         location = "+20+10",
         size = 150,
         color = "white",
         strokecolor = "black") |>
  plot(padding = 5, maxwidth = 1000, nrow = 1) |>
  write_stim("man/figures/", "zoom", "jpg",
             overwrite = TRUE)

## lisa composite
read_stim("inst/lisa/")  |>
  mlabel(gravity = "southwest",
         location = "+20+10",
         size = 80,
         color = "white",
         strokecolor = "black") |>
  plot(padding = 5, maxwidth = 1000, nrow = 1) |>
  write_stim("man/figures/", "lisa", "jpg",
             overwrite = TRUE)
