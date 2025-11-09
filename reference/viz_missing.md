# Visualise missing data

Create a heatmap showing which values in a dataframe are missing.

## Usage

``` r
viz_missing(data, missing = NA, show_rownames = TRUE, show_colnames = TRUE)
```

## Arguments

- data:

  Data to visualise. Needs to be a data frame or tibble.

- missing:

  List of values to define as missing. Default `NA`.

- show_rownames:

  Boolean to determine if row names are printed. Default `TRUE`.

- show_colnames:

  Boolean to determine if column names are printed. Default `TRUE`.

## Examples

``` r
viz_missing(mtcars)
```
