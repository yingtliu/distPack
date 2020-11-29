test_that("chiSq_dis works", {
  expect_equal(as.matrix(chiSq_dis(matrix(c(1, 2, 3, 4), 2, 2), output = "dist")),
               as.matrix(as.dist(matrix(c(0, 0.476190, 0.476190, 0), 2, 2))), tolerance = 1e-5)

  expect_equal(chiSq_dis(matrix(c(1, 2, 4, 3, 0, -4, 5, 0.1, 7), 3, 3)),
               matrix(c(0, 8.041176, -46.86667, 8.041176, 0, 3.37230, -46.86667, 3.37230, 0), 3, 3), tolerance = 1e-5)

  expect_equal(chiSq_dis(c(1, 3, 5, 4), c(9, 4, -4, 7)),
               matrix(c(0, 88.36104,  88.36104, 0), 2, 2), tolerance = 1e-5)

})
