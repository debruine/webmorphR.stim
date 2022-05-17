# load_stim ----
test_that("load_stim", {
  expect_error(load_stim("no"))

  zoom <- load_stim("zoom")
  expect_equal(length(zoom), 4)
  expect_equal(class(zoom), c("stimlist", "list"))

  five <- load_stim("composite", 1:5)
  expect_equal(length(five), 5)
})

# canada ----
test_that("load_stim_canada", {
  all <- load_stim_canada()
  expect_equal(length(all), 40)
  expect_equal(class(all), c("stimlist", "list"))

  five <- load_stim_canada(1:5)
  expect_equal(length(five), 5)
  expect_equal(names(five), names(all)[1:5])

  male <- load_stim_canada("[0-9]{3}m")
  expect_equal(length(male), 20)
  expect_equal(names(male), names(all)[21:40])
})

# london ----
test_that("load_stim_london", {
  all <- load_stim_london()
  expect_equal(length(all), 102)
  expect_equal(class(all), c("stimlist", "list"))

  five <- load_stim_london(1:5)
  expect_equal(length(five), 5)
  expect_equal(names(five), names(all)[1:5])

  bond <- load_stim_london("007")
  expect_equal(length(bond), 1)
  expect_equal(names(bond), "007_03")
})

# smiling ----
test_that("load_stim_smiling", {
  all <- load_stim_smiling()
  expect_equal(length(all), 102)
  expect_equal(class(all), c("stimlist", "list"))

  five <- load_stim_smiling(1:5)
  expect_equal(length(five), 5)
  expect_equal(names(five), names(all)[1:5])

  bond <- load_stim_smiling("007")
  expect_equal(length(bond), 1)
  expect_equal(names(bond), "007_08")
})

# composite ----
test_that("load_stim_composite", {
  all <- load_stim_composite()
  expect_equal(length(all), 10)
  expect_equal(class(all), c("stimlist", "list"))

  five <- load_stim_composite(1:5)
  expect_equal(length(five), 5)
  expect_equal(names(five), names(all)[1:5])

  white <- load_stim_composite("white")
  expect_equal(length(white), 2)
  expect_equal(names(white), c("f_white", "m_white"))
})

# zoom ----
test_that("load_stim_zoom", {
  all <- load_stim_zoom()
  expect_equal(length(all), 4)
  expect_equal(class(all), c("stimlist", "list"))

  two <- load_stim_zoom(1:2)
  expect_equal(length(two), 2)
  expect_equal(names(two), names(all)[1:2])

  x <- load_stim_zoom("15|60")
  expect_equal(length(x), 2)
  expect_equal(names(x), c("15cm", "60cm"))
})

# lisa ----
test_that("load_stim_lisa", {
  all <- load_stim_lisa()
  expect_equal(length(all), 4)
  expect_equal(class(all), c("stimlist", "list"))

  two <- load_stim_lisa(1:2)
  expect_equal(length(two), 2)
  expect_equal(names(two), names(all)[1:2])

  x <- load_stim_lisa("1|4")
  expect_equal(length(x), 2)
  expect_equal(names(x), c("lisa1", "lisa4"))
})

# rainbow ----
test_that("load_stim_rainbow", {
  all <- load_stim_rainbow()
  expect_equal(length(all), 18)
  expect_equal(class(all), c("stimlist", "list"))

  two <- load_stim_rainbow(1:2)
  expect_equal(length(two), 2)
  expect_equal(names(two), names(all)[1:2])

  x <- load_stim_rainbow("reptile|poppy")
  expect_equal(length(x), 2)
})


