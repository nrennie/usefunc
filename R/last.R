#' last
#'
#' Function to extract last element
#'
#' @param x Vector or dataframe to extract last element from
#' @param type Character specifying whether to use last row or column if
#' dataframe. One of "row" or "col". Default "col".
#' @return A vector or dataframe.
#' @examples
#' last(data.frame(x = c(1, 2, 3), y = c("A", "B", "C")))
#' @export

last <- function(x, type = "col") {
  # checks
  if (!(any(c(type != "col", type != "row")))) {
    stop("type must be one of 'row' or 'col'")
  }
  # if x vector
  if (class(x)[1] %in% c("numeric", "logical", "character")) {
    output <- utils::tail(x, 1)
  }
  # if x dataframe
  else if ("data.frame" %in% class(x)) {
    if (type == "col") {
      output <- x[, ncol(x)]
    }
    else if (type == "row") {
      output <- x[nrow(x), ]
    }
  }
  else {
    stop("unknown input: must be data.frame or vector")
  }
  return(output)
}
