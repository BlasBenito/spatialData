# Download Extended vi Dataset

Downloads and reads the extended version of the
[vi](https://blasbenito.github.io/spatialData/reference/vi.md) dataset
(30,000 rows) from the
[spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra)
repository. See
[vi](https://blasbenito.github.io/spatialData/reference/vi.md) for
details on the response variables, predictors, and data sources.

## Usage

``` r
vi_extra(dir = ".", quiet = TRUE)
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

sf data.frame with 30,000 rows and 64 columns (POINT geometry, WGS84).

## See also

Other vi:
[`vi`](https://blasbenito.github.io/spatialData/reference/vi.md),
[`vi_predictors`](https://blasbenito.github.io/spatialData/reference/vi_predictors.md),
[`vi_responses`](https://blasbenito.github.io/spatialData/reference/vi_responses.md)

## Examples

``` r
if (FALSE) { # \dontrun{
vi_extended <- vi_extra()
nrow(vi_extended)
} # }
```
