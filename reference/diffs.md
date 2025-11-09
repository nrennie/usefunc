# First Differences

This function is the opposite of cumsum which returns the first order
differences between vector elements. An extension of diff, also
including the first element of the vector.

## Usage

``` r
diffs(x)
```

## Arguments

- x:

  A numeric vector.

## Value

A numeric vector.

## Examples

``` r
diffs(c(1,5,7))
#> [1] 1 4 2
```
