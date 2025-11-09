# Extract imports from Python script

This function is inspired by `att_from_rscript()` in the attachment
package. It assumes that Python imports start on line 1, are not
separated by any empty lines, and that an empty line exists between
imports and code.

## Usage

``` r
att_from_pyscript(file)
```

## Arguments

- file:

  File path to a .py file

## Value

A comma-separated character string.
