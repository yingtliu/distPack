test_that("input_format works", {
  #x validate numeric
  expect_error(input_format(x = "1"), "x should be numeric")
  expect_error(input_format(x = NA), "x should be numeric")
  #y missing, validate x is a computable matrix
  expect_error(input_format(x = 1),
               "Input x should be n x m, where n is number of points and m is number of dimension")
  expect_error(input_format(x = matrix(c(1, 2), 1, 2)),
               "Input x should be n x m, where n is number of points and m is number of dimension")
  #y is present, validate y numeric
  expect_error(input_format(x = c(1, 2), y = "1"), "y should be numeric")
  expect_error(input_format(x = c(1, 2), y = NA), "y should be numeric")

  #y is present, validate x and y compatible
  expect_error(input_format(x = c(1, 2), y = 1), "x and y should have same dimension")

  #correct
  expect_equal(input_format(matrix(c(1, 2, 3, 4), 2, 2)), matrix(c(1, 2, 3, 4), 2, 2)
               , tolerance = 1e-5)
  expect_equal(input_format(c(1, 2), c(3, 4)), matrix(c(1, 3, 2, 4), 2, 2)
               , tolerance = 1e-5)
})

test_that("output_format works", {
  expect_equal(output_format(matrix(c(1, 2, 3, 4), 2, 2), "matrix"), matrix(c(1, 2, 3, 4), 2, 2))
  expect_equal(as.matrix(output_format(matrix(c(1, 2, 3, 4), 2, 2), "dist")),
               as.matrix(as.dist(matrix(c(1, 2, 3, 4), 2, 2))))
  expect_error(output_format(matrix(c(1, 2, 3, 4), 2, 2), "2"),
               "output should either be 'matrix' or 'dist'")

})
