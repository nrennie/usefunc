#' plot_theme
#'
#' Custom ggplot theme
#'
#' @param main_font Font used for all text elements except the title. Default "sans".
#' @param title_font Font used for the title. Default "sans".
#' @param hjust Horizontal alignment of title, subtitle, and caption. Default 0.
#' @return A ggplot2 theme
#' @export

plot_theme <- function(main_font = "sans",
                       title_font = "sans",
                       hjust = 0) {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      # title
      plot.title = ggplot2::element_text(family = title_font,
                                face = "bold",
                                size = 16,
                                hjust = hjust),
      # subtitle
      plot.subtitle = ggplot2::element_text(family = main_font,
                                size = 14,
                                lineheight = 0.5,
                                hjust = hjust),
      # caption
      plot.caption = ggplot2::element_text(family = main_font,
                                   size = 12,
                                   hjust = hjust),
      # axis
      axis.title = ggplot2::element_text(family = main_font,
                                size = 12),
      axis.title.x = ggplot2::element_text(family = main_font,
                                  size = 12,
                                  margin = ggplot2::margin(t = 10, b = -10)),
      axis.title.y = ggplot2::element_text(family = main_font,
                                  size = 12,
                                  margin = ggplot2::margin(r = 10, l = -10)),
      axis.text = ggplot2::element_text(family = main_font,
                               size = 10),
      # plot
      plot.margin = ggplot2::unit(c(0.8, 0.8, 0.5, 0.5),
                         unit = "cm"),
      # legend
      legend.text = ggplot2::element_text(family = main_font,
                                 size = 12),
      legend.title = ggplot2::element_text(family = main_font,
                                  size = 12),
      legend.background = ggplot2::element_rect(fill = "transparent",
                                       colour = "transparent"),
      legend.key = ggplot2::element_rect(fill = "transparent",
                                colour = "transparent"),

      # facets
      strip.background = ggplot2::element_rect(fill = "transparent",
                                      colour = "transparent"),
      strip.text = ggplot2::element_text(family = main_font,
                                size = 14)
    )
}
