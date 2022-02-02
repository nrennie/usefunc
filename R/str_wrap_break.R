#' str_wrap_break
#'
#' Vectorised function to wrap strings and preserve line breaks
#'
#' @param x The character string (or character vector) to wrap
#' @param break_limit The character limit per line
#' @return A character string (or vector)
#' @export


str_wrap_break <- function(x, break_limit) {
  sapply(strwrap(x, break_limit, simplify = FALSE), paste, collapse = "\n")
}
