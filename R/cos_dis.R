#' Cosine distance matrice between points
#'
#' Computes the Cosine distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Cosine distance matrix or object calculated by 1 - dot(x, y) / (norm(x) * norm(y)) between points
#'
#' @examples
#' cos_dis(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' cos_dis(rnorm(10), rnorm(10))
#'
#' @export
#'

cos_dis <- function (x, y, output = "matrix"){

  m = input_format(x, y)
  dis = 1 - m%*%t(m)/(sqrt(rowSums(m^2) %*% t(rowSums(m^2))))

  return(output_format(dis, output))
}
