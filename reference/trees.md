# Tree Species Richness and Environmental Predictors

`sf` data frame with `POLYGON` geometry representing 3,373 hexagonal
grid cells across the Americas, with 1 response variable encoding tree
species richness and 50 numeric environmental predictors.

Tree species in this dataset does NOT represent total tree species
counts! The dataset focuses on the tree species found in Mesoamerica
according to the Tree Biodiversity Network (BIOTREE-NET; Cayuela et al.
2012). These tree species were later used as input for a search query at
the Global Biodiversity Information Facility (GBIF). The resulting
presence data and environmental data at 1km resolution were aggregated
as a hexagonal grid.

The hexagonal grid was constructed using
`sf::st_make_grid(..., cellsize = 1, square = FALSE)` at 1-degree
resolution (WGS84, EPSG:4326), covering longitudes -125.3° to -34.3° and
latitudes -34.4° to 49.9°.

## Usage

``` r
data(trees)
```

## Format

An sf data frame with 3373 rows (hexagonal cells) and 53 columns:

**Identifier (1):**

- `cellid`: Integer row number identifying each hexagonal cell.

**Response variable (1):**

- `trees`: Integer count of tree species richness per hexagonal cell.

**Predictor variables - Air humidity (4):**

- `air_humidity_max`: Maximum monthly near-surface relative humidity
  (%).

- `air_humidity`: Mean annual near-surface relative humidity (%).

- `air_humidity_min`: Minimum monthly near-surface relative humidity
  (%).

- `air_humidity_range`: Annual near-surface relative humidity range (%).

**Predictor variables - Aridity (1):**

- `aridity`: Mean aridity index (unitless ratio; higher values indicate
  wetter conditions).

**Predictor variables - Cloud cover (4):**

- `cloud_cover_max`: Maximum monthly total cloud cover (%).

- `cloud_cover`: Mean annual total cloud cover (%).

- `cloud_cover_min`: Minimum monthly total cloud cover (%).

- `cloud_cover_range`: Annual total cloud cover range (%).

**Predictor variables - Evapotranspiration (4):**

- `evapotranspiration_max`: Maximum monthly potential evapotranspiration
  (kg m-2 month-1; Penman-Monteith).

- `evapotranspiration`: Mean annual potential evapotranspiration (kg m-2
  month-1; Penman-Monteith).

- `evapotranspiration_min`: Minimum monthly potential evapotranspiration
  (kg m-2 month-1; Penman-Monteith).

- `evapotranspiration_range`: Annual potential evapotranspiration range
  (kg m-2 month-1; Penman-Monteith).

**Predictor variables - Rainfall (8):**

- `rainfall_seasonality`: Precipitation seasonality as coefficient of
  variation of monthly totals (CHELSA bio15).

- `rainfall`: Total annual precipitation (kg m-2; CHELSA bio12).

- `rainfall_coldest_quarter`: Precipitation of coldest quarter (kg m-2;
  CHELSA bio19).

- `rainfall_driest_month`: Precipitation of driest month (kg m-2; CHELSA
  bio14).

- `rainfall_driest_quarter`: Precipitation of driest quarter (kg m-2;
  CHELSA bio17).

- `rainfall_warmest_quarter`: Precipitation of warmest quarter (kg m-2;
  CHELSA bio18).

- `rainfall_wettest_month`: Precipitation of wettest month (kg m-2;
  CHELSA bio13).

- `rainfall_wettest_quarter`: Precipitation of wettest quarter (kg m-2;
  CHELSA bio16).

**Predictor variables - Temperature (11):**

- `temperature_isothermality`: Isothermality as ratio of mean daily
  range to annual range (unitless; CHELSA bio3).

- `temperature_mean_daily_range`: Mean of monthly temperature ranges
  (degrees C; CHELSA bio2).

- `temperature`: Mean annual air temperature (degrees C; CHELSA bio1).

- `temperature_range`: Annual air temperature range (degrees C; CHELSA
  bio7).

- `temperature_seasonality`: Temperature seasonality as standard
  deviation of monthly means (degrees C; CHELSA bio4).

- `temperature_coldest_month_min`: Minimum temperature of coldest month
  (degrees C; CHELSA bio6).

- `temperature_coldest_quarter`: Mean temperature of coldest quarter
  (degrees C; CHELSA bio11).

- `temperature_driest_quarter`: Mean temperature of driest quarter
  (degrees C; CHELSA bio9).

- `temperature_warmest_month_max`: Maximum temperature of warmest month
  (degrees C; CHELSA bio5).

- `temperature_warmest_quarter`: Mean temperature of warmest quarter
  (degrees C; CHELSA bio10).

- `temperature_wettest_quarter`: Mean temperature of wettest quarter
  (degrees C; CHELSA bio8).

**Predictor variables - Geography (4):**

- `distance_to_ocean`: Distance to nearest ocean coastline (km).

- `elevation`: Elevation above sea level (m).

- `latitude`: Latitude of cell centroid (degrees).

- `longitude`: Longitude of cell centroid (degrees).

**Predictor variables - Soil properties (6):**

- `soil_clay`: Soil clay content (%).

- `soil_nitrogen`: Soil nitrogen content (g kg-1).

- `soil_organic_carbon`: Soil organic carbon content (g kg-1).

- `soil_ph`: Soil pH in water.

- `soil_sand`: Soil sand content (%).

- `soil_silt`: Soil silt content (%).

**Predictor variables - Soil temperature (4):**

- `soil_temperature_max`: Maximum annual land surface temperature
  (degrees C).

- `soil_temperature`: Mean annual land surface temperature (degrees C).

- `soil_temperature_min`: Minimum annual land surface temperature
  (degrees C).

- `soil_temperature_range`: Annual land surface temperature range
  (degrees C).

**Predictor variables - NDVI (4):**

- `ndvi_max`: Maximum annual NDVI (unitless, 0-1).

- `ndvi`: Mean annual NDVI (unitless, 0-1).

- `ndvi_min`: Minimum annual NDVI (unitless, 0-1).

- `ndvi_range`: Annual NDVI range (unitless, 0-1).

**Geometry:**

- `geometry`: Hexagonal polygon geometry (WGS84, EPSG:4326).

## Source

**Response variable (tree species richness):**

- GBIF: Global Biodiversity Information Facility. <https://www.gbif.org>

- Cayuela, L., Gálvez-Bravo, L., Pérez Pérez, R., de Albuquerque, F.S.,
  Golicher, D.J., Zahawi, R.A., et al. (2012). The Tree Biodiversity
  Network (BIOTREE-NET): prospects for biodiversity research and
  conservation in the Neotropics. *Biological Sciences Faculty Research
  and Publications*, 762.
  <https://epublications.marquette.edu/bio_fac/762>

**Climate predictors (temperature, precipitation, air humidity, cloud
cover, evapotranspiration):**

- Brun, P., Zimmermann, N.E., Hari, C., Pellissier, L., & Karger, D.N.
  (2022). CHELSA-BIOCLIM+ A novel set of global climate-related
  predictors at kilometre-resolution. EnviDat.
  [doi:10.16904/envidat.332](https://doi.org/10.16904/envidat.332)

**Aridity:**

- Zomer, R.J., Xu, J., & Trabucco, A. (2022). Version 3 of the Global
  Aridity Index and Potential Evapotranspiration Database. *Scientific
  Data*, 9, 409.
  [doi:10.1038/s41597-022-01493-1](https://doi.org/10.1038/s41597-022-01493-1)

**Soil properties:**

- Hengl, T., et al. (2017). SoilGrids250m: Global gridded soil
  information based on machine learning. *PLOS ONE*, 12(2), e0169748.
  [doi:10.1371/journal.pone.0169748](https://doi.org/10.1371/journal.pone.0169748)

**Soil temperature:**

- Wan, Z., Hook, S., & Hulley, G. (2015). MOD11A2 MODIS/Terra Land
  Surface Temperature/Emissivity 8-Day L3 Global 1km SIN Grid V006. NASA
  EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD11A2.006](https://doi.org/10.5067/MODIS/MOD11A2.006)

**NDVI:**

- Copernicus Global Land Service: Normalised Difference Vegetation Index
  Long Term Statistics v3 (1999-2019, 1 km resolution).
  <https://sdi.eea.europa.eu/catalogue/srv/api/records/290e81fb-4c84-42ad-ae12-f663312b0eda>

**Elevation and geography:**

- Jarvis, A., Reuter, H.I., Nelson, A., & Guevara, E. (2008).
  Hole-filled seamless SRTM data V4. International Centre for Tropical
  Agriculture (CIAT). <https://srtm.csi.cgiar.org>

## See also

Other trees:
[`trees_predictors`](https://blasbenito.github.io/spatialData/reference/trees_predictors.md),
[`trees_response`](https://blasbenito.github.io/spatialData/reference/trees_response.md)
