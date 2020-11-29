test_that("minkowski works", {
  expect_equal(as.matrix(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = 3, output = "dist")),
                         as.matrix(as.dist(matrix(c(0,1.259921, 1.259921, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(minkowski(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3), p = 10),
               matrix(c(0, 4.903614,7.000149, 4.903614, 0, 6.902955, 7.000149, 6.902955, 0), 3, 3), tolerance = 1e-5)

  expect_equal(minkowski(c(1, 3, 5, 4), c(9, 4, -4, 7), p = 0.5, w = 3),
               matrix(c(0, 659.536, 659.536, 0), 2, 2), tolerance = 1e-5)
  # p and w validation
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2)), "p should be defined")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = "1"), "p should be numeric and non-zero")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = 0), "p should be numeric and non-zero")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = NA), "p should be numeric and non-zero")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = 2, w = -1), "w should be numeric and positive")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = 2, w = NA), "w should be numeric and positive")
  expect_error(minkowski(matrix(c(1, 2, 3, 4), 2, 2), p = 2, w = "2"), "w should be numeric and positive")
})




