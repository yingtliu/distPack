test_that("chebyshev works", {
  expect_equal(as.matrix(chebyshev(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 1, 1, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(chebyshev(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0, 4.9, 7, 4.9, 0, 6.9, 7, 6.9, 0), 3, 3), tolerance = 1e-5)

  expect_equal(chebyshev(c(1, 3, 5, 4), c(9, 4, -4, 7)),
               matrix(c(0, 9, 9, 0), 2, 2), tolerance = 1e-5)

})
