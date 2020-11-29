#' Manhattan distance matrice between points
#'
#' Computes the Manhattan distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Manhattan distance matrix or object, \eqn sum(abs(x - y)) between points
#'
#' @examples
#' manhattan(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' manhattan(rnorm(10), rnorm(10))
#'
#' @export
#'

manhattan <- function(x, y, output = "matrix"){
  dis = minkowski(x, y, p = 1, w = 1, output = "matrix")
  return(output_format(dis, output))
}