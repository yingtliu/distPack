

euclidean <- function(x, y, w = 1, output = "matrix"){
  dis = minkowski(x, y, p = 2, w, output = "matrix")
  return(output_format(dis, output))
}
