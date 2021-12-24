#' Not In
#'
#' This function negates the in function and returns true if
#' the item before notin is not in the item after.
#'
#' @param x vector of elements to check
#' @param y vector to check against
#' @return A boolean vector.
#' @export

"%notin%" <- function(x, y) {
  !("%in%" (x, y))
}
