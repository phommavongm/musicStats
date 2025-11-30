test_that("playlist works", {
  p <- playlist()
  t <- track("Test", "Artist", 200, 120)
  p <- add_track(p, t)
  expect_equal(length(p), 1)
})
