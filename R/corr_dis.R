#' Correlation distance matrice between points
#'
#' Computes the correlation distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Correlation distance matrix or object, centered form of cosine distance between points
#'
#' @examples
#' corr_dis(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' corr_dis(rnorm(10), rnorm(10))
#'
#' @export
#'

corr_dis <- function(x, y, output = "matrix"){

  m = input_format(x, y)
  mean_m = m - rowMeans(m)
  dis = cos_dis(mean_m)

  return(output_format(dis, output))
}
