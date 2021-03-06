% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chiSq_dis.R
\name{chiSq_dis}
\alias{chiSq_dis}
\title{Chi-square distance matrice between points}
\usage{
chiSq_dis(x, y, output = "matrix")
}
\arguments{
\item{x}{Numeric vector, or a matrix with size n x m.}

\item{y}{(optional)Numeric vector; must be the same length as x. If no input of y,
please specify all other parameters to avoid confusion.}

\item{output}{Format of output, either matrix or dist object. Default is matrix.}
}
\value{
Chi-square distance matrix or object calculated by sum((x - y)^2 /(x + y)) between points
}
\description{
Computes the Chi-square distance between n points in m dimensions
,or two points with same dimensions.
}
\examples{
chiSq_dis(x = matrix(c(1, 2, 3, 4), 2, 2), output = "dist")

chiSq_dis(rnorm(10), rnorm(10))

}
