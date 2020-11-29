test_that("cos_dis works", {
  expect_equal(as.matrix(cos_dis(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 0.01005051, 0.01005051, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(cos_dis(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0, 0.7889751, 0.4929074, 0.7889751, 0, 0.5172697, 0.4929074, 0.5172697, 0), 3, 3), tolerance = 1e-5)

  expect_equal(cos_dis(c(1, 3, 5, 4), c(9, 4, -4, 7)),
               matrix(c(0, 0.6809525, 0.6809525, 0), 2, 2), tolerance = 1e-5)

})
