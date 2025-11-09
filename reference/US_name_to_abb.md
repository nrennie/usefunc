# US State Abbreviation to Name

This function converts a US state name to the two-letter state
abbreviation. It uses the base R state.abb and state.name vectors, but
is extended to included the District of Columbia.

## Usage

``` r
US_name_to_abb(x)
```

## Arguments

- x:

  A character element or vector.

## Value

A character element or vector.

## See also

[`US_abb_to_name()`](https://nrennie.github.io/usefunc/reference/US_abb_to_name.md)

## Examples

``` r
US_name_to_abb(c("Texas", "District of Columbia"))
#> [1] "TX" "DC"
```
