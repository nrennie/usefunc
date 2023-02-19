#' Generates a random hex code
#'
#' @param n Number of hex codes to generate
#' @examples
#' random_hex(2)
#' @return Character string of hex codes
#' @export

random_hex <- function(n) {
  generate_hex <- function() {
    choices <- sample(c(as.character(0:9), LETTERS[1:6]), size = 6, replace = TRUE)
    output <- paste0("#", stringr::str_flatten(choices))
    return(output)
  }
  hex <- replicate(n = n, generate_hex(), simplify = TRUE)
  return(hex)
}
