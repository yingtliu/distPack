#Function to check validation of inputs

input_format <- function(x, y){

  # check valid of x
  if (any(is.na(x) | !is.numeric(x))){
    stop("x should be numeric")
  }
  # condition in y is missing
  if(missing(y)){
    # check if x in correct format
    if(!is.null(dim(x)[1]) && dim(x)[1] >= 2){
      m = x
    }
    else{
      stop("Input x should be n x m, where n is number of points and m is number of dimension")
    }
  }
  # condition in y is present
  else{
    # check valid of y
    if (any(is.na(y) | !is.numeric(y))){
      stop("y should be numeric")
    }
    else{
      # check if x and y in correct format
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

#Function to check the option of output
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
