#' none
#'
#' Function to check if none of the elements are true
#'
#' @param x Boolean vector
#' @param ... arguments inherited from all
#' @return A boolean vector of length 1.
#' @examples
#' none(c(FALSE, FALSE, TRUE))
#' none(c(FALSE, FALSE, FALSE))
#' @export

none <- function(x, ...) {
  all(!x, ...)
}
