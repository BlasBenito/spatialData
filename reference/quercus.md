# European Quercus (Oak) Species Distribution with Environmental Predictors

`sf` data frame with `POINT` geometry containing 6,728 records of eight
European Quercus (oak) species and absence points, 1 response variable
(see
[quercus_response](https://blasbenito.github.io/spatialData/reference/quercus_response.md)),
and 31 numeric predictors (see
[quercus_predictors](https://blasbenito.github.io/spatialData/reference/quercus_predictors.md)).
Use
[`quercus_extra()`](https://blasbenito.github.io/spatialData/reference/quercus_extra.md)
to download the associated environmental raster.

## Usage

``` r
data(quercus)
```

## Format

An sf data frame with 6728 rows (species occurrences and absences) and
33 columns:

**Response variable (1):**

- `species`: Character column with 9 levels: `"absence"` (background
  absence points), `"Quercus robur"` (English oak), `"Quercus petraea"`
  (Sessile oak), `"Quercus ilex"` (Holm oak), `"Quercus cerris"` (Turkey
  oak), `"Quercus faginea"` (Portuguese oak), `"Quercus pubescens"`
  (Downy oak), `"Quercus pyrenaica"` (Pyrenean oak), `"Quercus suber"`
  (Cork oak).

**Predictor variables - Bioclimatic (17):**

WorldClim v2 bioclimatic variables (excludes bio8 and bio9):

- `bio1`: Annual mean temperature (degrees C).

- `bio2`: Mean diurnal range (degrees C).

- `bio3`: Isothermality (bio2/bio7 \* 100).

- `bio4`: Temperature seasonality (standard deviation \* 100).

- `bio5`: Max temperature of warmest month (degrees C).

- `bio6`: Min temperature of coldest month (degrees C).

- `bio7`: Temperature annual range (degrees C).

- `bio10`: Mean temperature of warmest quarter (degrees C).

- `bio11`: Mean temperature of coldest quarter (degrees C).

- `bio12`: Annual precipitation (mm).

- `bio13`: Precipitation of wettest month (mm).

- `bio14`: Precipitation of driest month (mm).

- `bio15`: Precipitation seasonality (coefficient of variation).

- `bio16`: Precipitation of wettest quarter (mm).

- `bio17`: Precipitation of driest quarter (mm).

- `bio18`: Precipitation of warmest quarter (mm).

- `bio19`: Precipitation of coldest quarter (mm).

**Predictor variables - NDVI (4):**

- `ndvi_average`: Average NDVI.

- `ndvi_maximum`: Maximum NDVI.

- `ndvi_minimum`: Minimum NDVI.

- `ndvi_range`: NDVI range.

**Predictor variables - Solar radiation (4):**

- `sun_rad_average`: Average solar radiation (kJ m-2 day-1).

- `sun_rad_maximum`: Maximum solar radiation (kJ m-2 day-1).

- `sun_rad_minimum`: Minimum solar radiation (kJ m-2 day-1).

- `sun_rad_range`: Solar radiation range (kJ m-2 day-1).

**Predictor variables - Land cover (3):**

- `landcover_veg_bare`: Percentage of bare ground.

- `landcover_veg_herb`: Percentage of herbaceous vegetation.

- `landcover_veg_tree`: Percentage of tree cover.

**Predictor variables - Topography (2):**

- `topographic_diversity`: Number of unique combinations of elevation,
  slope, and aspect classes within a neighborhood.

- `topo_slope`: Topographic slope in degrees.

**Predictor variables - Human impact (1):**

- `human_footprint`: Human footprint index.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

## Source

**Species occurrences:**

- GBIF.org. Global Biodiversity Information Facility.
  <https://www.gbif.org/>

**Bioclimatic variables and solar radiation:**

- Fick, S.E. & Hijmans, R.J. (2017). WorldClim 2: new 1-km spatial
  resolution climate surfaces for global land areas. *International
  Journal of Climatology*, 37(12), 4302-4315.
  [doi:10.1002/joc.5086](https://doi.org/10.1002/joc.5086)

**NDVI:**

- Didan, K. (2015). MOD13A2 MODIS/Terra Vegetation Indices 16-Day L3
  Global 1km SIN Grid V006. NASA EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD13A2.006](https://doi.org/10.5067/MODIS/MOD13A2.006)

**Land cover:**

- DiMiceli, C., et al. (2015). MOD44B MODIS/Terra Vegetation Continuous
  Fields Yearly L3 Global 250m SIN Grid V006. NASA EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD44B.006](https://doi.org/10.5067/MODIS/MOD44B.006)

**Elevation and topography:**

- Jarvis, A., Reuter, H.I., Nelson, A., & Guevara, E. (2008).
  Hole-filled seamless SRTM data V4. International Centre for Tropical
  Agriculture (CIAT). <https://srtm.csi.cgiar.org>

**Human footprint:**

- Venter, O., et al. (2016). Global terrestrial Human Footprint maps for
  1993 and 2009. *Scientific Data*, 3, 160067.
  [doi:10.1038/sdata.2016.67](https://doi.org/10.1038/sdata.2016.67)

## See also

Other quercus:
[`quercus_extra()`](https://blasbenito.github.io/spatialData/reference/quercus_extra.md),
[`quercus_predictors`](https://blasbenito.github.io/spatialData/reference/quercus_predictors.md),
[`quercus_response`](https://blasbenito.github.io/spatialData/reference/quercus_response.md)
