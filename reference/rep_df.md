# rep_df

Function to replicate dataframes.

## Usage

``` r
rep_df(df, times = 1, length.out = NA, each = 1)
```

## Arguments

- df:

  The dataframe to be replicated.

- times:

  an integer-valued vector giving the (non-negative) number of times to
  repeat each element if of length length(x), or to repeat the whole
  vector if of length 1. Negative or NA values are an error. A double
  vector is accepted, other inputs being coerced to an integer or double
  vector.

- length.out:

  non-negative integer. The desired length of the output vector. Other
  inputs will be coerced to a double vector and the first element taken.
  Ignored if NA or invalid.

- each:

  non-negative integer. Each element of x is repeated each times. Other
  inputs will be coerced to an integer or double vector and the first
  element taken. Treated as 1 if NA or invalid.

## Value

A dataframe.
