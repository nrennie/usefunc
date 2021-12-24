#' Hours:Minutes:Seconds to Decimal
#'
#' This function converts a time object in the hh:mm:ss form to a numeric in hours.
#'
#' @param data Input vector or element in hh:mm:ss format.
#' @return A numeric vector of times in hours.
#' @export

hms_to_decimal <- function(data) {
  x <- lubridate::hms(data)
  lubridate::hour(x) + (lubridate::minute(x) / 60) + (lubridate::second(x) / 3600)
}
