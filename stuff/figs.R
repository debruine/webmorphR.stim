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

## rainbow composite
order <- rainbow_info |>
  dplyr::arrange(type, colour) |>
  dplyr::pull(photo_name)

read_stim("inst/rainbow/")[order]  |>
  pad(50, 0, 0, 0) |>
  mlabel(gravity = "north",
         location = "+0+5",
         size = 40,
         color = "black") |>
  plot(padding = 5, maxwidth = 1000, nrow = 3) |>
  write_stim("man/figures/", "rainbow", "jpg",
             overwrite = TRUE)


## 3dsk
s <- load_stim_3dsk()
s |> pad(1, fill = 'black') |>
  pad(200, 0, 0, 0) |>
  label() |>
  plot(nrow = 5) |>
  write_stim("man/figures/", "3dsk", "jpg",
             overwrite = TRUE)

# s2 <- s |> rename_stim(pattern = "(fe)?male/", replacement = "")
# write_stim(s2[1:50], "~/Desktop/3dsk/female", format = "jpg", quality = 90)
# write_stim(s2[51:100], "~/Desktop/3dsk/male", format = "jpg", quality = 90)
