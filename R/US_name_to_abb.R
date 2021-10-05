#' US State Abbreviation to Name
#'
#' This function converts a US state name to the two-letter state abbreviation.
#' It uses the base R state.abb and state.name vectors, but is extended to included
#' the District of Columbia.
#'
#' @param x A character element or vector.
#' @return A character element or vector.
#' @examples
#' US_name_to_abb(c("Texas", "District of Columbia"))
#' @seealso [US_abb_to_name()]
#' @export

US_name_to_abb <- function(x){
  c(state.abb, "DC")[match(x, c(state.name, "District of Columbia"))]
}
