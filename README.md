# distPack
<!-- badges: start -->
  [![Travis build status](https://travis-ci.com/yingtliu/distPack.svg?branch=master)](https://travis-ci.com/yingtliu/distPack)
[![Codecov test coverage](https://codecov.io/gh/yingtliu/distPack/branch/master/graph/badge.svg)](https://codecov.io/gh/yingtliu/distPack?branch=master)
<!-- badges: end -->

A package bundles functions to evaluate distance matrices by different methods. 

### Methods included
* Euclidean: between two points in Euclidean space is a number, the length of a line segment between the two points. Formula: sqrt(sum((x - y)^ 2)). [https://en.wikipedia.org/wiki/Euclidean_distance]

* Manhattan: the distance between two points is the sum of the absolute differences of their Cartesian coordinates. Formula: sum(abs(x - y)).[https://en.wikipedia.org/wiki/Taxicab_geometry]

* Minkowski: a metric in a normed vector space which can be considered as a generalization of both the Euclidean distance and the Manhattan distance. Formula: sum(abs(x - y)^p)^(1/p) [https://en.wikipedia.org/wiki/Minkowski_distance]

* Chebyshev: a metric defined on a vector space where the distance between two vectors is the greatest of their differences along any coordinate dimension. Formula: max(abs(x - y)) [https://en.wikipedia.org/wiki/Chebyshev_distance]

* Cosine: a measure of distance between two non-zero vectors of an inner product space. Formula: 1- Cosine similarity. [https://en.wikipedia.org/wiki/Cosine_similarity]

* Correlation: subtracted mean form of cosine distance. [https://github.com/JuliaStats/Distances.jl]

* Chi-square: The Euclidean distance between the components of the profiles of frequence table is called the chi-square distance. Formula: sum((x - y)^2 / (x + y)) [https://link.springer.com/referenceworkentry/10.1007%2F978-0-387-32833-1_53]

### Accuracy
Since not all functions are available in R packages, I used a julia package called 'Distance'[https://github.com/JuliaStats/Distances.jl], which includes many distance functions. All provide good accuracy. 

### Efficiency

The functions are optimized by vectorization and minimize use of loops. The functions are tested with matrix in size 100 x 100 with 10000 elements. 
The elapsed time consumed are:

* euclidean: 0.08s
* manhattan: 0.11s
* cos_dis: 0.06s
* corr_dis: 0.07s
* chebyshev: 0.08s
* chiSq_dis: 0.06s
* minkowski: 0.10s


