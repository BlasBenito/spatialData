# European Quercus (Oak) Species Distribution with Environmental Predictors

`sf` dataframe with `POINT` geometry containing 6,728 records of eight
European Quercus (oak) species and absence points, 1 response variable
(see
[quercus_response](https://blasbenito.github.io/spatialData/reference/quercus_response.md)),
and 31 numeric predictors (see
[quercus_predictors](https://blasbenito.github.io/spatialData/reference/quercus_predictors.md)).
Use
[`quercus_extra()`](https://blasbenito.github.io/spatialData/reference/quercus_extra.md)
to download the associated environmental raster.

**Response**

The response variable `species` is a character column with 9 levels:

- `"absence"`: Background absence points.

- `"Quercus robur"`: *Quercus robur* L. (English oak).

- `"Quercus petraea"`: *Quercus petraea* (Matt.) Liebl. (Sessile oak).

- `"Quercus ilex"`: *Quercus ilex* L. (Holm oak).

- `"Quercus cerris"`: *Quercus cerris* L. (Turkey oak).

- `"Quercus faginea"`: *Quercus faginea* Lam. (Portuguese oak).

- `"Quercus pubescens"`: *Quercus pubescens* Willd. (Downy oak).

- `"Quercus pyrenaica"`: *Quercus pyrenaica* Willd. (Pyrenean oak).

- `"Quercus suber"`: *Quercus suber* L. (Cork oak).

**Predictors**

- `bio1`, `bio2`, ..., `bio19`: WorldClim bioclimatic variables (17
  variables, excluding bio8 and bio9).

- `ndvi_average`, `ndvi_maximum`, `ndvi_minimum`, `ndvi_range`: MODIS
  NDVI statistics.

- `sun_rad_average`, `sun_rad_maximum`, `sun_rad_minimum`,
  `sun_rad_range`: WorldClim solar radiation statistics.

- `landcover_veg_bare`, `landcover_veg_herb`, `landcover_veg_tree`:
  MODIS Vegetation Continuous Fields (MOD44B) land cover percentages.

- `topographic_diversity`: Number of unique combinations of elevation,
  slope, and aspect classes within a neighborhood.

- `topo_slope`: Topographic slope in degrees.

- `human_footprint`: Human footprint index.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

**Data sources**

- **Species occurrences**: GBIF.org. Global Biodiversity Information
  Facility. <https://www.gbif.org/>.

- **Bioclimatic variables and solar radiation**: Fick, S.E. and Hijmans,
  R.J., 2017. WorldClim 2: new 1-km spatial resolution climate surfaces
  for global land areas. International Journal of Climatology, 37(12),
  pp.4302-4315. [doi:10.1002/joc.5086](https://doi.org/10.1002/joc.5086)

- **Human footprint**: Venter, O., Sanderson, E.W., Magrach, A., Allan,
  J.R., Beher, J., Jones, K.R., Possingham, H.P., Laurance, W.F., Wood,
  P., Fekete, B.M., Levy, M.A. and Watson, J.E., 2016. Global
  terrestrial Human Footprint maps for 1993 and 2009. Scientific Data,
  3, p.160067.
  [doi:10.1038/sdata.2016.67](https://doi.org/10.1038/sdata.2016.67)

- **Land cover**: DiMiceli, C., Carroll, M., Sohlberg, R., Kim, D.H.,
  Kelly, M., and Townshend, J.R.G. (2015). MOD44B MODIS/Terra Vegetation
  Continuous Fields Yearly L3 Global 250m SIN Grid V006. NASA EOSDIS LP
  DAAC.
  [doi:10.5067/MODIS/MOD44B.006](https://doi.org/10.5067/MODIS/MOD44B.006)

- **NDVI**: Didan, K. (2015). MOD13A2 MODIS/Terra Vegetation Indices
  16-Day L3 Global 1km SIN Grid V006. NASA EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD13A2.006](https://doi.org/10.5067/MODIS/MOD13A2.006)

- **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E.
  Guevara, 2008. Hole-filled seamless SRTM data V4, International Centre
  for Tropical Agriculture (CIAT). <https://srtm.csi.cgiar.org>.

## Usage

``` r
data(quercus)
```

## Format

sf data.frame

## See also

Other quercus:
[`quercus_extra()`](https://blasbenito.github.io/spatialData/reference/quercus_extra.md),
[`quercus_predictors`](https://blasbenito.github.io/spatialData/reference/quercus_predictors.md),
[`quercus_response`](https://blasbenito.github.io/spatialData/reference/quercus_response.md)

## Examples

``` r
data(quercus)
head(quercus)
#>           species bio1 bio10 bio11 bio12 bio13 bio14 bio15 bio16 bio17 bio18
#> 1   Quercus robur   75   163   -20   740   106    34    40   294   107   294
#> 2   Quercus robur   75   149     5   818    96    43    27   279   138   205
#> 3 Quercus petraea  110   179    41  1006   105    61    13   296   212   212
#> 4   Quercus robur   58   158   -36   587    73    28    33   210    92   160
#> 5 Quercus petraea   82   164     2   582    67    30    23   194   103   194
#> 6    Quercus ilex  157   250    73   510    69     4    51   178    29    29
#>   bio19 bio2 bio3 bio4 bio5 bio6 bio7 topographic_diversity human_footprint
#> 1   115   90   31 7116  227  -62  289                    93           42.33
#> 2   162   65   28 5759  193  -35  228                    12           52.65
#> 3   285  103   41 5368  249    0  249                    43           32.92
#> 4   118   64   22 7617  206  -74  280                     8           26.68
#> 5   125   68   27 6366  213  -31  244                    11           40.08
#> 6   172  124   37 6904  353   22  331                    55           36.03
#>   landcover_veg_bare landcover_veg_herb landcover_veg_tree ndvi_average
#> 1               0.36              58.85              40.69         0.63
#> 2               0.25              91.73               8.02         0.63
#> 3               0.00              71.67              28.25         0.73
#> 4               0.08              44.06              55.78         0.50
#> 5               0.30              53.94              35.20         0.38
#> 6               2.40              87.12              10.47         0.48
#>   ndvi_maximum ndvi_minimum ndvi_range sun_rad_average sun_rad_maximum
#> 1         0.79         0.44       0.36         4164.84         7515.76
#> 2         0.77         0.45       0.33         3552.85         7189.52
#> 3         0.80         0.63       0.17         4480.35         7601.16
#> 4         0.83         0.06       0.77         3376.14         7099.44
#> 5         0.53         0.22       0.31         3787.15         7301.63
#> 6         0.70         0.27       0.42         5117.36         7761.03
#>   sun_rad_minimum sun_rad_range topo_slope   geometry
#> 1          897.09       6618.67       3.10 17.9, 49.4
#> 2          356.39       6833.12       0.39  8.7, 56.2
#> 3         1271.03       6330.14       1.25  1.0, 45.7
#> 4          230.87       6868.57       0.28 22.5, 58.4
#> 5          552.49       6749.14       0.43 12.2, 53.6
#> 6         2118.26       5642.77       1.88 -4.8, 38.7
```
