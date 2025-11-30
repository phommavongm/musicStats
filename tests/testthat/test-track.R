test_that("track creation works", {
  t <- track("Test", "Artist", 200, 120)
  expect_s3_class(t, "track")
})
