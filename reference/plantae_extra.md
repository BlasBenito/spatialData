# Download Extended plantae Dataset

Downloads and reads the extended version of the
[plantae](https://blasbenito.github.io/spatialData/reference/plantae.md)
dataset with original polygon geometries instead of point centroids,
from the
[spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra)
repository. See
[plantae](https://blasbenito.github.io/spatialData/reference/plantae.md)
for details on the response variables, predictors, and data sources.

## Usage

``` r
plantae_extra(dir = ".", quiet = TRUE)
```

## Arguments

- dir:

  (optional, character) Directory to save the file. Defaults to the
  current working directory.

- quiet:

  (optional, logical) If `TRUE` (default), suppresses
  [`sf::st_read()`](https://r-spatial.github.io/sf/reference/st_read.html)
  messages.

## Value

sf data.frame with 662 rows and 143 columns (MULTIPOLYGON geometry,
WGS84).

## See also

Other plantae:
[`plantae`](https://blasbenito.github.io/spatialData/reference/plantae.md),
[`plantae_east()`](https://blasbenito.github.io/spatialData/reference/plantae_east.md),
[`plantae_predictors`](https://blasbenito.github.io/spatialData/reference/plantae_predictors.md),
[`plantae_responses`](https://blasbenito.github.io/spatialData/reference/plantae_responses.md),
[`plantae_west()`](https://blasbenito.github.io/spatialData/reference/plantae_west.md)

## Examples

``` r
if (FALSE) { # \dontrun{
plantae_extended <- plantae_extra()
nrow(plantae_extended)
} # }
```
