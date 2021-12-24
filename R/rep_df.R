#' rep_df
#'
#' Function to replicate dataframes.
#'
#' @param df The dataframe to be replicated.
#' @param times an integer-valued vector giving the (non-negative) number of times
#' to repeat each element if of length length(x), or to repeat the whole vector if
#' of length 1. Negative or NA values are an error. A double vector is accepted,
#' other inputs being coerced to an integer or double vector.
#' @param length.out non-negative integer. The desired length of the output vector.
#' Other inputs will be coerced to a double vector and the first element taken.
#' Ignored if NA or invalid.
#' @param each non-negative integer. Each element of x is repeated each times.
#' Other inputs will be coerced to an integer or double vector and the first element
#' taken. Treated as 1 if NA or invalid.
#' @return A dataframe.
#' @export

rep_df <- function(df, times = 1, length.out = NA, each = 1) {
  as.data.frame(lapply(df, rep, times = times, length.out = length.out, each = each))
}
