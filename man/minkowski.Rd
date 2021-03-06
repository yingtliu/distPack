% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/minkowski.R
\name{minkowski}
\alias{minkowski}
\title{Minkowski distance matrice between points}
\usage{
minkowski(x, y, p, w = 1, output = "matrix")
}
\arguments{
\item{x}{Numeric vector, or a matrix with size n x m.}

\item{y}{(optional)Numeric vector; must be the same length as x. If no input of y,
please specify all other parameters to avoid confusion.}

\item{p}{Non-zero numeric value}

\item{w}{Numeric value greater than 0, account for weight. Default is 1.}

\item{output}{Format of output, either matrix or dist object. Default is matrix.}
}
\value{
Minkowski distance matrix or object calculated by sum(|x - y|^p * w) ^ (1/p) between points
}
\description{
Computes the Minkowski distance between n points in m dimensions
,or two points with same dimensions.
}
\examples{
minkowski(x = matrix(c(1, 2, 3, 4), 2, 2), p = 2, w = 0.5, output = "dist")

minkowski(rnorm(10), rnorm(10), 0.5, 2)

}
