#' Not In
#'
#' This function negates the in function and returns true if the item before notin is not in the item after.
#'
#' @usage x%notin%y
#' @return A boolean vector.
#' @examples
#' c(1,3) %notin% c(1,2,3)
#' @export

`%notin%` <- Negate(`%in%`)

