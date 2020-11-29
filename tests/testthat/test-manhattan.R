test_that("manhattan works", {
  expect_equal(as.matrix(manhattan(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 2, 2, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(manhattan(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0, 8.9, 12, 8.9, 0, 12.9, 12, 12.9, 0), 3, 3), tolerance = 1e-5)

  expect_equal(manhattan(c(1, 3, 5, 4), c(9, 4, -4, 7)),
               matrix(c(0, 21, 21, 0), 2, 2), tolerance = 1e-5)

})
