test_that("corr_dis works", {
  expect_equal(as.matrix(corr_dis(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 0, 0, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(corr_dis(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0, 1.8429887, 0.7362053, 1.8429887, 0, 0.7034988, 0.7362053, 0.7034988, 0), 3, 3), tolerance = 1e-5)

  expect_equal(corr_dis(c(1, 3, 5, 4), c(9, 4, -4, 7)),
               matrix(c(0, 1.785436, 1.785436, 0), 2, 2), tolerance = 1e-5)

})
