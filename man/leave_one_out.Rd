\name{leave_one_out}
\alias{leave_one_out}
\title{leave one out method}
\usage{
leave_one_out(X, Y)
}
\description{
X: the input
Y: the output
print the mean error
}
\examples{
library(HistData)
data("GaltonFamilies")
galton0=GaltonFamilies
galton1=galton0
X = cbind((galton1[,2]+galton1[,3])/2)
Y = galton1[,8]
leave_one_out(X, Y)
}
