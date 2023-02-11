#' Generates a random hex code
#'
#' @examples
#' random_hex()
#' @return Character string of a hex code
#' @export

random_hex <- function() {
  choices <- sample(c(as.character(0:9), LETTERS[1:6]), size = 6, replace = TRUE)
  output <- paste0("#", stringr::str_flatten(choices))
  return(output)
}
