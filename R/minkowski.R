
minkowski <- function(x, y, p, w = 1, output = "matrix"){
  #sum(abs(x - y)^p * w) ^ (1/p)
  if(missing(p)){
    stop("p should be defined")
  }
  else if(is.na(p) || !is.numeric(p)){
    stop("p should be numeric")
  }

  if (is.na(w) || !is.numeric(w)){
    stop("p should be numeric")
  }

  m = input_format(x, y)
  n = nrow(m)

  for(i in 1:n){
    dis[,i] = colSums(abs(t(m)-m[i,])^p * w)^(1/p)
  }
 return(output_format(dis, output))
}
