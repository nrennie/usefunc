% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/none.R
\name{none}
\alias{none}
\title{none}
\usage{
none(x, ...)
}
\arguments{
\item{x}{Boolean vector}

\item{...}{arguments inherited from all}
}
\value{
A boolean vector of length 1.
}
\description{
Function to check if none of the elements are true
}
\examples{
none(c(FALSE, FALSE, TRUE))
none(c(FALSE, FALSE, FALSE))
}
