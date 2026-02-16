# Download Environmental Raster for neanderthal

Downloads and reads the environmental raster associated with the
[neanderthal](https://blasbenito.github.io/spatialData/reference/neanderthal.md)
dataset from the
[spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra)
repository. Requires the terra package.

## Usage

``` r
neanderthal_extra(dir = ".", quiet = TRUE)
```

## Arguments

- dir:

  (optional, character) Directory to save the file. Defaults to the
  current working directory.

- quiet:

  (optional, logical) If `TRUE` (default), suppresses download messages.

## Value

SpatRaster object.

## See also

Other neanderthal:
[`neanderthal`](https://blasbenito.github.io/spatialData/reference/neanderthal.md),
[`neanderthal_predictors`](https://blasbenito.github.io/spatialData/reference/neanderthal_predictors.md),
[`neanderthal_response`](https://blasbenito.github.io/spatialData/reference/neanderthal_response.md)

## Examples

``` r
if (FALSE) { # \dontrun{
neanderthal_env <- neanderthal_extra()
neanderthal_env
} # }
```
