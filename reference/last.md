# last

Function to extract last element

## Usage

``` r
last(x, type = "col")
```

## Arguments

- x:

  Vector or dataframe to extract last element from

- type:

  Character specifying whether to use last row or column if dataframe.
  One of "row" or "col". Default "col".

## Value

A vector or dataframe.

## Examples

``` r
last(data.frame(x = c(1, 2, 3), y = c("A", "B", "C")))
#>   y
#> 1 A
#> 2 B
#> 3 C
```
