#' First Differences
#'
#' This function is the opposite of cumsum which returns the
#' first order differences between vector elements. An extension
#' of diff, also including the first element of the vector.
#'
#' @param x A numeric vector.
#' @return A numeric vector.
#' @examples
#' diffs(c(1,5,7))
#' @export

diffs <- function(x){
  if (length(x) == 1){
    return(x)
  } else {
    return(c(x[1], diff(x)))
  }
}

