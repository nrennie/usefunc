#' Find title and description of function in package documentation
#'
#' @param function_name Function name given as a string
#' @param pkg_name Package name given as a string
#' @return Tibble with three columns
get_docs <- function(function_name, pkg_name) {
  doc <- suppressWarnings(rd2list::get_doc(
    function_name = function_name,
    package = pkg_name
  ))
  if (!is.null(doc)) {
    tibble::tibble(
      Function = c(paste0(function_name, "()")),
      Title = c(doc$title),
      Description = c(doc$description)
    )
  } else {
    tibble::tibble(
      Function = c(paste0(function_name, "()")),
      Title = c(),
      Description = c()
    )
  }
}

#' Find title and description of all exported objects in package documentation
#' @param pkg_name Package name given as a string
#' @return Tibble with three columns
#' @importFrom rlang .data
#' @export
function_docs_table <- function(pkg_name) {
  funnamespace <- tibble::tibble(
    utils::read.table(
      system.file("NAMESPACE", package = pkg_name),
      stringsAsFactors = FALSE
    )
  ) |>
    dplyr::filter(stringr::str_starts(.data$V1, "export")) |>
    dplyr::mutate(V1 = stringr::str_extract(string = .data$V1, pattern = "(?<=\\().*(?=\\))")) |>
    dplyr::pull(.data$V1)

  output <- purrr::map_dfr(
    .x = funnamespace,
    .f = ~ get_docs(function_name = .x, pkg_name = pkg_name)
  )
  return(knitr::kable(output))
}
