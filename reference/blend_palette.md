# Blend a colour palette with another colour

This function allows users to blend a colour palette vector with another
colour to make a more cohesive palette.

## Usage

``` r
blend_palette(palette, blend_colour, view_palette = FALSE)
```

## Arguments

- palette:

  The starting vector for the palette, which must be either be
  recognised colour names (e.g. "blue") or hex colour codes (e.g.
  "#ffffff").

- blend_colour:

  The colour to blend with, which must be either be a recognised colour
  name (e.g. "blue") or a hex colour code (e.g. "#ffffff").

- view_palette:

  Boolean whether or not to view the palette.

## Value

A character vector of colours.

## Examples

``` r
blend_palette(c("red", "purple"), "blue")
#> [1] "#990066" "#6013F6"
```
