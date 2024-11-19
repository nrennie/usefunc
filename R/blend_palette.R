#' Blend a colour palette with another colour
#'
#' This function allows users to blend a colour palette vector with another
#' colour to make a more cohesive palette.
#' @param palette The starting vector for the palette, which must be either be recognised colour names (e.g. "blue") or hex colour codes (e.g. "#ffffff").
#' @param blend_colour The colour to blend with, which must be either be a recognised colour name (e.g. "blue") or a hex colour code (e.g. "#ffffff").
#' @param view_palette Boolean whether or not to view the palette.
#' @return A character vector of colours.
#' @export
#' @examples
#' blend_palette(c("red", "purple"), "blue")
blend_palette <- function(palette, blend_colour, view_palette = FALSE) {
  output <- sapply(
    palette,
    function(x) {
      suppressMessages(monochromeR::generate_palette(x,
        blend_colour = blend_colour,
        modification = "blend",
        n_colours = 3
      ))[2]
    }
  )
  output <- unname(output)
  if (view_palette) {
    monochromeR::view_palette(output)
  }
  return(output)
}
