input_format <- function(x, y){
  if (any(is.na(x) || !is.numeric(x))){
    stop("x should be numeric")
  }

  if(missing(y)){
    if(!is.null(dim(x)[1]) && dim(x)[1] > 1){
      m = x
    }
    else{
      stop("Input x should be n x m, where n is number of points and m is number of dimension")
    }
  }
  else{
    if (any(is.na(y) || !is.numeric(y))){
      stop("y should be numeric")
    }
    else{
      if(length(x) == length(y)){
        m = rbind(x, y, deparse.level = 0)
      }
      else{
        stop("x and y should have same dimension")
      }
    }
  }
  return(m)
}

output_format <- function(dis, output){
  if (output == "matrix"){
    return(dis)
  }
  else if(output == "dist"){
    return(as.dist(dis))
  }
  else{
    stop("output should either be 'matrix' or 'dist'")
  }
}