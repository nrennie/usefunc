#' Extract imports from Python script
#'
#' This function is inspired by `att_from_rscript()` in the attachment
#' package. It assumes that Python imports start on line 1, are not separated
#' by any empty lines, and that an empty line exists between imports and code.
#'
#' @param file File path to a .py file
#' @return A comma-separated character string.
#' @export

att_from_pyscript <- function(file) {
  file_txt <- readLines(file)
  import_lines <- file_txt[1:(which(file_txt == "")[1] - 1)]
  output <- character(length = length(import_lines))
  for (i in 1:length(import_lines)) {
    if (stringr::str_starts(import_lines[i], "import")) {
      output[i] <- stringr::str_extract(import_lines[i], "(?<=import )(\\w+)")
    } else if (stringr::str_starts(import_lines[i], "from")) {
      output[i] <- stringr::str_extract(import_lines[i], "(?<=from )(\\w+)")
    }
  }
  output <- stringr::str_flatten_comma(output)
  return(output)
}
