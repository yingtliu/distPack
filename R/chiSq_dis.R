#' Chi-square distance matrice between points
#'
#' Computes the Chi-square distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y Optional input. Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Chi-square distance matrix or object calculated by sum((x - y)^2 /(x + y)) between points
#'
#' @examples
#' chiSq_dis(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")
#'
#' chiSq_dis(rnorm(10), rnorm(10))
#'
#' @export
#'


chiSq_dis <- function(x, y, output = "matrix"){

  # standardize input
  m = input_format(x, y)
  n = nrow(m)
  # create empty matrix
  dis = matrix(0, nrow = n, ncol = n)
  for(i in 1:n){
    dis[,i] = colSums((m[i,] - t(m))^2 / (m[i,] + t(m)))
  }
  dis[is.na(dis)] = 0 #avoid NaN output
  return(output_format(dis, output))
}
