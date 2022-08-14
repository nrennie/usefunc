
#' Search Google
#'
#' Function to open a Google search in a browser for a set of terms
#'
#' @param search_terms character vector of terms to search
#' @return NULL
#' @examples
#' search_google("twitter #rstats")
#' search_google(c("twitter", "#rstats"))
#' @export
search_google <- function(search_terms) {
  search_terms <- paste(search_terms,
                        collapse = " ")
  search_terms <- utils::URLencode(search_terms,
                                   reserved = TRUE)
  search_url <- paste0("https://www.google.com/search?q=",
                       search_terms)

  utils::browseURL(search_url)
}
