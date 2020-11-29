#' Chebyshev distance matrice between points
#'
#' Computes the Chebyshev distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Chebyshev distance matrix or object, \eqn max(abs(x - y)) between points
#'
#' @examples
#' chebyshev(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' chebyshev(rnorm(10), rnorm(10))
#'
#' @export
#'
chebyshev <- function(x, y, output = "matrix"){

  m = input_format(x, y)
  n = nrow(m)
  dis = matrix(0, nrow = n, ncol = n)

  for(i in 1:n){
    dis[,i] = apply(abs(m[i,] - t(m)), 2, max)
  }
  return(output_format(dis, output))
}
