#' US State Abbreviation to Name
#'
#' This function converts a two-letter US state abbreviation to the state name.
#' It uses the base R state.abb and state.name vectors, but is extended to included
#' the District of Columbia.
#'
#' @param x A character element or vector.
#' @return A character element or vector.
#' @examples
#' US_abb_to_name(c("TX", "DC"))
#' @seealso [US_name_to_abb()]
#' @export

US_abb_to_name <- function(x) { # nolint
  c(datasets::state.name, "District of Columbia")[match(x, c(datasets::state.abb, "DC"))]
}
