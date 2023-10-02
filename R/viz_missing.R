#' Visualise missing data
#'
#' Create a heatmap showing which values in a dataframe
#' are missing.
#' @param data Data to visualise. Needs to be a data frame or tibble.
#' @param missing List of values to define as missing. Default `NA`.
#' @param show_rownames Boolean to determine if row names are printed.
#' Default `TRUE`.
#' @param show_colnames Boolean to determine if column names are printed.
#' Default `TRUE`.
#' @examples
#' viz_missing(mtcars)
#' @export

viz_missing <- function(data,
                        missing = NA,
                        show_rownames = TRUE,
                        show_colnames = TRUE) {
  # check which values are missing
  is_missing <- data |>
    dplyr::mutate(dplyr::across(dplyr::everything(), ~ .x %in% missing)) |>
    tibble::rownames_to_column() |>
    tidyr::pivot_longer(
      cols = -.data$rowname,
      names_to = "colname",
      values_to = "value"
    ) |>
    # arrange axes in same order as appear in data
    dplyr::mutate(
      colname = factor(.data$colname, levels = colnames(data)),
      rowname = factor(.data$rowname, levels = rownames(data)),
      value = factor(.data$value, levels = c(TRUE, FALSE))
    )
  # plot as a heatmap
  g <- ggplot2::ggplot(data = is_missing) +
    ggplot2::geom_raster(
      mapping = ggplot2::aes(
        x = .data$colname, y = .data$rowname, fill = .data$value
      )
    ) +
    ggplot2::scale_y_discrete(limits = rev) +
    ggplot2::scale_fill_manual(
      name = "Missing?",
      values = c(
        "TRUE" = "black",
        "FALSE" = "grey90"
      ),
      drop = FALSE,
      labels = c("TRUE" = "Yes", "FALSE" = "No"),
      breaks = c("TRUE", "FALSE")
    ) +
    ggplot2::theme_minimal() +
    ggplot2::theme(
      plot.margin = ggplot2::margin(10, 10, 10, 10),
      legend.position = "top"
    )
  if (!show_rownames) {
    g <- g +
      ggplot2::theme(
        axis.text.y = ggplot2::element_blank(),
        axis.title.y = ggplot2::element_blank()
      )
  }
  if (show_colnames) {
    g <- g + ggplot2::theme(
      axis.text.x = ggplot2::element_text(angle = 45, hjust = 1)
    )
  } else {
    g <- g +
      ggplot2::theme(
        axis.text.x = ggplot2::element_blank(),
        axis.title.x = ggplot2::element_blank()
      )
  }
  return(g)
}
