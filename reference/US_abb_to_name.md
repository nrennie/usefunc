# US State Abbreviation to Name

This function converts a two-letter US state abbreviation to the state
name. It uses the base R state.abb and state.name vectors, but is
extended to included the District of Columbia.

## Usage

``` r
US_abb_to_name(x)
```

## Arguments

- x:

  A character element or vector.

## Value

A character element or vector.

## See also

[`US_name_to_abb()`](https://nrennie.github.io/usefunc/reference/US_name_to_abb.md)

## Examples

``` r
US_abb_to_name(c("TX", "DC"))
#> [1] "Texas"                "District of Columbia"
```
