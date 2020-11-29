#' Minkowski distance matrice between points
#'
#' Computes the Minkowski distance between n points in m dimensions
#' ,or two points with same dimensions.
#'
#' @param x Numeric vector, or a matrix with size n x m.
#' @param y (optional)Numeric vector; must be the same length as x. If no input of y,
#'          please specify all other parameters to avoid confusion.
#' @param p Non-zero numeric value
#' @param w Numeric value greater than 0, account for weight. Default is 1.
#' @param output Format of output, either matrix or dist object. Default is matrix.
#'
#' @return Minkowski distance matrix or object, \eqn{\sum{|x - y|^{p} * w} ^ {1/p}} between points
#'
#' @examples
#' minkowski(x = matrix(c(1, 2, 3, 4), 2, 2), p = 2, w = 0.5, output = "dist")
#'
#' minkowski(rnorm(10), rnorm(10), 0.5, 2)
#'
#' @export
#'

minkowski <- function(x, y, p, w = 1, output = "matrix"){
  #sum(abs(x - y)^p * w) ^ (1/p)

  if(missing(p)){
    stop("p should be defined")
  }
  else if(is.na(p) || !is.numeric(p) || p == 0){
    stop("p should be numeric and non-zero")
  }

  if (is.na(w) || !is.numeric(w) || w < 0){
    stop("w should be numeric and positive")
  }

  m = input_format(x, y)
  n = nrow(m)
  dis = matrix(0, nrow = n, ncol = n)
  for(i in 1:n){
    dis[,i] = colSums(abs(t(m)-m[i,])^p * w)^(1/p)
  }
 return(output_format(dis, output))
}
