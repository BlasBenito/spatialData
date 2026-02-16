# Download Environmental Raster for quercus

Downloads and reads the environmental raster associated with the
[quercus](https://blasbenito.github.io/spatialData/reference/quercus.md)
dataset from the
[spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra)
repository. Requires the terra package.

## Usage

``` r
quercus_extra(dir = ".", quiet = TRUE)
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

Other quercus:
[`quercus`](https://blasbenito.github.io/spatialData/reference/quercus.md),
[`quercus_predictors`](https://blasbenito.github.io/spatialData/reference/quercus_predictors.md),
[`quercus_response`](https://blasbenito.github.io/spatialData/reference/quercus_response.md)

## Examples

``` r
if (FALSE) { # \dontrun{
quercus_env <- quercus_extra()
quercus_env
} # }
```
