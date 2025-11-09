# none

Function to check if none of the elements are true

## Usage

``` r
none(x, ...)
```

## Arguments

- x:

  Boolean vector

- ...:

  arguments inherited from all

## Value

A boolean vector of length 1.

## Examples

``` r
none(c(FALSE, FALSE, TRUE))
#> [1] FALSE
none(c(FALSE, FALSE, FALSE))
#> [1] TRUE
```
