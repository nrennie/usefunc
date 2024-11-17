#' Resample
#'
#' Resamples x of a specific size
#' @param x either a vector of one or more elements from which to choose.
#' @param ... inherited arguments
#' @return a vector of length size with elements drawn from x
#' @export
resample <- function(x, ...) x[sample.int(length(x), ...)]
