# Global NDVI Records and Environmental Predictors

`sf` data frame with `POINT` geometry representing 9,265 global
locations with 5 response variables encoding the Normalized Difference
Vegetation Index (NDVI) and 58 environmental predictors (47 numeric, 11
categorical). Use
[`vi_extra()`](https://blasbenito.github.io/spatialData/reference/vi_extra.md)
to download an extended version with 30,000 rows.

NDVI values are derived from the Copernicus Global Land Service Long
Term Statistics product (1999-2019) at 1 km resolution. Locations were
spatially thinned to reduce spatial autocorrelation.

**Response variable encodings:**

- `vi_numeric`: continuous NDVI values in the range 0-1.

- `vi_counts`: simulated integer counts created by multiplying
  `vi_numeric` by 1000 and coercing to integer.

- `vi_binomial`: simulated binary variable created by thresholding
  `vi_numeric` at 0.5.

- `vi_categorical`: character variable with categories "very_low",
  "low", "medium", "high", and "very_high", with thresholds at quantiles
  of `vi_numeric`.

- `vi_factor`: `vi_categorical` converted to factor.

Environmental predictors were extracted as pixel values from rasters at
1 km resolution.

## Usage

``` r
data(vi)
```

## Format

An sf data frame with 9265 rows (locations) and 64 columns:

**Response variables (5):**

- `vi_numeric`: Continuous NDVI value (0-1).

- `vi_counts`: Integer count encoding of NDVI (vi_numeric \* 1000).

- `vi_binomial`: Binary encoding of NDVI (1 if vi_numeric \> 0.5, else
  0).

- `vi_categorical`: Categorical encoding of NDVI ("very_low", "low",
  "medium", "high", "very_high").

- `vi_factor`: Factor encoding of NDVI (vi_categorical as factor).

**Predictor variables - Climate classification (3):**

- `koppen_zone`: Koppen climate zone code (Beck et al. 2018).

- `koppen_group`: Koppen climate group name.

- `koppen_description`: Koppen climate description.

**Predictor variables - Soil type (1):**

- `soil_type`: Soil classification type.

**Predictor variables - Topography (3):**

- `topo_slope`: Topographic slope in degrees.

- `topo_diversity`: Number of combinations of different elevations,
  slopes, and aspects in a 5 km radius around each 1 km cell.

- `topo_elevation`: Elevation in meters.

**Predictor variables - Soil water index (4):**

- `swi_mean`: Mean annual soil water index (unitless, 0-100 cm depth).

- `swi_max`: Maximum annual soil water index (unitless, 0-100 cm depth).

- `swi_min`: Minimum annual soil water index (unitless, 0-100 cm depth).

- `swi_range`: Annual soil water index range (unitless, 0-100 cm depth).

**Predictor variables - Soil temperature (4):**

- `soil_temperature_mean`: Mean annual land surface temperature (degrees
  C).

- `soil_temperature_max`: Maximum annual land surface temperature
  (degrees C).

- `soil_temperature_min`: Minimum annual land surface temperature
  (degrees C).

- `soil_temperature_range`: Annual land surface temperature range
  (degrees C).

**Predictor variables - Soil properties (6):**

- `soil_sand`: Soil sand content (%).

- `soil_clay`: Soil clay content (%).

- `soil_silt`: Soil silt content (%).

- `soil_ph`: Soil pH.

- `soil_soc`: Soil organic carbon content (%).

- `soil_nitrogen`: Soil nitrogen content (%).

**Predictor variables - Solar radiation (4):**

- `solar_rad_mean`: Mean annual solar radiation (kJ m-2).

- `solar_rad_max`: Maximum annual solar radiation (kJ m-2).

- `solar_rad_min`: Minimum annual solar radiation (kJ m-2).

- `solar_rad_range`: Annual solar radiation range (kJ m-2).

**Predictor variables - Growing season (4):**

- `growing_season_length`: Length of the growing season (days).

- `growing_season_temperature`: Mean temperature of the growing season
  (degrees C).

- `growing_season_rainfall`: Accumulated precipitation of the growing
  season (kg m-2).

- `growing_degree_days`: Growing degree days above 0 degrees C
  accumulated over one year (degree-days).

**Predictor variables - Temperature (5):**

- `temperature_mean`: Mean annual air temperature (degrees C; CHELSA
  bio1).

- `temperature_max`: Maximum temperature of warmest month (degrees C;
  CHELSA bio5).

- `temperature_min`: Minimum temperature of coldest month (degrees C;
  CHELSA bio6).

- `temperature_range`: Annual air temperature range (degrees C; CHELSA
  bio7).

- `temperature_seasonality`: Temperature seasonality as standard
  deviation of monthly means (degrees C; CHELSA bio4).

**Predictor variables - Rainfall (4):**

- `rainfall_mean`: Mean annual rainfall (kg m-2).

- `rainfall_min`: Minimum monthly rainfall (kg m-2).

- `rainfall_max`: Maximum monthly rainfall (kg m-2).

- `rainfall_range`: Annual rainfall range (kg m-2).

**Predictor variables - Evapotranspiration (4):**

- `evapotranspiration_mean`: Mean annual potential evapotranspiration
  (kg m-2 month-1; Penman-Monteith).

- `evapotranspiration_max`: Maximum monthly potential evapotranspiration
  (kg m-2 month-1; Penman-Monteith).

- `evapotranspiration_min`: Minimum monthly potential evapotranspiration
  (kg m-2 month-1; Penman-Monteith).

- `evapotranspiration_range`: Annual potential evapotranspiration range
  (kg m-2 month-1; Penman-Monteith).

**Predictor variables - Cloud cover (4):**

- `cloud_cover_mean`: Mean annual total cloud cover (%).

- `cloud_cover_max`: Maximum monthly total cloud cover (%).

- `cloud_cover_min`: Minimum monthly total cloud cover (%).

- `cloud_cover_range`: Annual total cloud cover range (%).

**Predictor variables - Aridity (1):**

- `aridity_index`: Mean aridity index (unitless ratio; higher values
  indicate wetter conditions).

**Predictor variables - Humidity (4):**

- `humidity_mean`: Mean annual near-surface relative humidity (%).

- `humidity_max`: Maximum monthly near-surface relative humidity (%).

- `humidity_min`: Minimum monthly near-surface relative humidity (%).

- `humidity_range`: Annual near-surface relative humidity range (%).

**Predictor variables - Biogeography (3):**

- `biogeo_ecoregion`: Ecoregion name.

- `biogeo_biome`: Biome name.

- `biogeo_realm`: Ecological realm name.

**Predictor variables - Administrative (4):**

- `country_name`: Country name.

- `continent`: Continent name.

- `region`: UN region name.

- `subregion`: UN sub-region name.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

## Source

**Response variables (NDVI):**

- Copernicus Global Land Service: Normalised Difference Vegetation Index
  Long Term Statistics v3 (1999-2019, 1 km resolution).
  <https://sdi.eea.europa.eu/catalogue/srv/api/records/290e81fb-4c84-42ad-ae12-f663312b0eda>

**Climate classification:**

- Beck, H.E., et al. (2018). Present and future Koppen-Geiger climate
  classification maps at 1-km resolution. *Scientific Data*, 5, 180214.
  [doi:10.1038/sdata.2018.214](https://doi.org/10.1038/sdata.2018.214)

**Soil water index:**

- Copernicus Land Monitoring Service: Soil Water Index.
  [doi:10.2909/290e81fb-4c84-42ad-ae12-f663312b0eda](https://doi.org/10.2909/290e81fb-4c84-42ad-ae12-f663312b0eda)

**Climate predictors (temperature, rainfall, solar radiation, growing
season, evapotranspiration, cloud cover, humidity):**

- Brun, P., Zimmermann, N.E., Hari, C., Pellissier, L., & Karger, D.N.
  (2022). CHELSA-BIOCLIM+ A novel set of global climate-related
  predictors at kilometre-resolution. EnviDat.
  [doi:10.16904/envidat.332](https://doi.org/10.16904/envidat.332)

**Soil type and properties:**

- Hengl, T., et al. (2017). SoilGrids250m: Global gridded soil
  information based on machine learning. *PLOS ONE*, 12(2), e0169748.
  [doi:10.1371/journal.pone.0169748](https://doi.org/10.1371/journal.pone.0169748)

**Soil temperature:**

- Wan, Z., Hook, S., & Hulley, G. (2015). MOD11A2 MODIS/Terra Land
  Surface Temperature/Emissivity 8-Day L3 Global 1km SIN Grid V006. NASA
  EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD11A2.006](https://doi.org/10.5067/MODIS/MOD11A2.006)

**Ecoregions and biogeography:**

- Dinerstein, E., et al. (2017). An Ecoregion-Based Approach to
  Protecting Half the Terrestrial Realm. *BioScience*, 67(6), 534-545.
  [doi:10.1093/biosci/bix014](https://doi.org/10.1093/biosci/bix014)

**Elevation and topography:**

- Jarvis, A., Reuter, H.I., Nelson, A., & Guevara, E. (2008).
  Hole-filled seamless SRTM data V4. International Centre for Tropical
  Agriculture (CIAT). <https://srtm.csi.cgiar.org>

**Aridity index:**

- Zomer, R.J., Xu, J., & Trabucco, A. (2022). Version 3 of the Global
  Aridity Index and Potential Evapotranspiration Database. *Scientific
  Data*, 9, 409.
  [doi:10.1038/s41597-022-01493-1](https://doi.org/10.1038/s41597-022-01493-1)

**Country, continent, region, and subregion:**

- Natural Earth. Free vector and raster map data.
  <https://www.naturalearthdata.com/>

## See also

Other vi:
[`vi_extra()`](https://blasbenito.github.io/spatialData/reference/vi_extra.md),
[`vi_predictors`](https://blasbenito.github.io/spatialData/reference/vi_predictors.md),
[`vi_responses`](https://blasbenito.github.io/spatialData/reference/vi_responses.md)
