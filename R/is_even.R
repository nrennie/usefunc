#' is_even
#'
#' Function to check if a number is even
#'
#' @param x Integer to check if is even
#' @return A boolean.
#' @export
is_even <- function(x) {
  if ((x %% 2) == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
