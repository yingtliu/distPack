test_that("euclidean works", {
  expect_equal(as.matrix(euclidean(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 1.4142135, 1.4142135, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(euclidean(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0,5.831809,7.874008, 5.831809, 0, 8.222530, 7.874008, 8.222530, 0), 3, 3), tolerance = 1e-5)

  expect_equal(euclidean(c(1, 3, 5, 4), c(9, 4, -4, 7), w = 3),
               matrix(c(0, 21.56386, 21.56386, 0), 2, 2), tolerance = 1e-5)

})
