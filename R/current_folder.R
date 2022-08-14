#' Current folder
#'
#' Function to open the folder containing the document currently
#' being edited.
#'
#' @return NULL
#' @export
current_folder <- function() {
  path_name <- rstudioapi::getSourceEditorContext()$path
  if (path_name == "") {
    return("File not saved")
  } else {
    utils::browseURL(dirname(path_name))
  }
}
