#' String extract between
#'
#' This function extracts the portion of a string between two delimiters.
#'
#' @param x A string
#' @param start Regex for starting delimiter
#' @param end Regex for ending delimiter
#' @return A string.
#' @export

str_extract_between <- function(x, start, end) {
  pattern <- paste0("(?<=", start, ")(.*?)(?=", end, ")")
  return(stringr::str_extract(x, pattern = pattern))
}
