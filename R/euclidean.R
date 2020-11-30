#' Euclidean distance matrice between points
#'
#' Computes the Euclidean distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param w Numeric value greater than 0, account for weight. Default is 1.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Euclidean distance matrix or object calculated by sqrt(sum((x - y) ^ 2)) between points
#'
#' @examples
#' euclidean(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' euclidean(rnorm(10), rnorm(10), w = 2)
#'
#' @export
#'

euclidean <- function(x, y, w = 1, output = "matrix"){
  dis = minkowski(x, y, p = 2, w, output = "matrix")
  return(output_format(dis, output))
}
