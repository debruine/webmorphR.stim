test_that("london_info", {
  x <- london_info

  expect_equal(nrow(x), 102)
  expect_equal(names(x), c("face_id", "face_age", "face_gender", "face_eth"))
})

test_that("canada_info", {
  x <- canada_info

  expect_equal(nrow(x), 40)
  expect_equal(names(x), c("face_id", "face_age", "face_gender"))
})
