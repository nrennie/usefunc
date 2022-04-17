#' is_odd
#'
#' Function to check if a number is odd
#'
#' @param x Integer to check if is odd
#' @return A boolean.
#' @export
is_odd <- function(x) {
  if (((x + 1) %% 2) == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
