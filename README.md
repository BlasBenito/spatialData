
<!-- README.md is generated from README.Rmd. Please edit that file -->

# spatialData

<!-- badges: start -->

[![R-CMD-check](https://github.com/BlasBenito/spatialData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/BlasBenito/spatialData/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`spatialData` provides ready-to-use spatial datasets for ecological and
environmental modeling in R. Each dataset includes pre-processed
response variables and environmental predictors, making it easy to jump
straight into species distribution modeling, biodiversity analysis, or
spatial statistics.

## Installation

You can install the development version of `spatialData` from
[GitHub](https://github.com/blasbenito/spatialData):

``` r
# install.packages("remotes")
remotes::install_github("blasbenito/spatialData")
```

## Datasets

| Dataset | Description | Records | Responses | Predictors | Article |
|:---|:---|---:|---:|---:|:---|
| `neanderthal` | Neanderthal presence/absence records with paleoclimate and topographic predictors | 245 | 1 | 25 | [link](https://blasbenito.github.io/spatialData/articles/neanderthal.html) |
| `quercus` | European oak species distribution records with bioclimatic and land cover predictors | 6,728 | 1 | 31 | [link](https://blasbenito.github.io/spatialData/articles/quercus.html) |
| `vi` | Global NDVI records with climate, soil, and topographic predictors | 9,265 | 5 | 58 | [link](https://blasbenito.github.io/spatialData/articles/vi.html) |
| `plantae` | Plant diversity metrics for global ecoregions with environmental predictors | 662 | 53 | 96 | – |

All datasets are `sf` data frames with point or polygon geometries,
loaded lazily via `data()`.
