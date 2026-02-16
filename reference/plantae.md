# Plant diversity metrics for global ecoregions

Plant diversity metrics (richness, rarity, endemism, beta diversity)
obtained from GBIF Plantae records for global ecoregions. Includes
metrics for all plants, trees, and grasses at species, genus, and family
taxonomic levels. Ecoregion boundaries are derived from [Ecoregions
2017](https://ecoregions2017.appspot.com/). Original polygon geometries
have been converted to point centroids to reduce file size while
preserving spatial context.

## Usage

``` r
data(plantae)
```

## Format

An sf data frame with 662 rows (ecoregions) and 155 columns:

**Identifier columns:**

- `ecoregion_id`: Unique ecoregion identifier.

- `ecoregion_name`: Ecoregion name.

- `ecoregion_biome`: Biome classification.

- `ecoregion_realm`: Biogeographic realm.

- `ecoregion_continent`: Continent name.

**Response variables - Richness (9):**

- `richness_species`: Number of plant species.

- `richness_genera`: Number of plant genera.

- `richness_families`: Number of plant families.

- `richness_classes`: Number of plant classes.

- `richness_species_trees`: Number of tree species.

- `richness_genera_trees`: Number of tree genera.

- `richness_families_trees`: Number of tree families.

- `richness_species_grasses`: Number of grass species.

- `richness_genera_grasses`: Number of grass genera.

**Response variables - Rarity-weighted richness (6):**

- `rarity_weighted_richness_species`: Rarity-weighted richness for
  species (Williams et al. 1996).

- `rarity_weighted_richness_genera`: Rarity-weighted richness for
  genera.

- `rarity_weighted_richness_species_trees`: Rarity-weighted richness for
  tree species.

- `rarity_weighted_richness_genera_trees`: Rarity-weighted richness for
  tree genera.

- `rarity_weighted_richness_species_grasses`: Rarity-weighted richness
  for grass species.

- `rarity_weighted_richness_genera_grasses`: Rarity-weighted richness
  for grass genera.

**Response variables - Mean rarity (6):**

- `mean_rarity_species`: Mean rarity index for species.

- `mean_rarity_genera`: Mean rarity index for genera.

- `mean_rarity_species_trees`: Mean rarity index for tree species.

- `mean_rarity_genera_trees`: Mean rarity index for tree genera.

- `mean_rarity_species_grasses`: Mean rarity index for grass species.

- `mean_rarity_genera_grasses`: Mean rarity index for grass genera.

**Response variables - Beta diversity R (raw turnover) (16):**

- `betadiversity_R_species`: Raw turnover count for species.

- `betadiversity_R_percent_species`: Raw turnover percentage for
  species.

- `betadiversity_R_genera`: Raw turnover count for genera.

- `betadiversity_R_percent_genera`: Raw turnover percentage for genera.

- `betadiversity_R_families`: Raw turnover count for families.

- `betadiversity_R_percent_families`: Raw turnover percentage for
  families.

- `betadiversity_R_species_trees`: Raw turnover count for tree species.

- `betadiversity_R_percent_species_trees`: Raw turnover percentage for
  tree species.

- `betadiversity_R_genera_trees`: Raw turnover count for tree genera.

- `betadiversity_R_percent_genera_trees`: Raw turnover percentage for
  tree genera.

- `betadiversity_R_families_trees`: Raw turnover count for tree
  families.

- `betadiversity_R_percent_families_trees`: Raw turnover percentage for
  tree families.

- `betadiversity_R_species_grasses`: Raw turnover count for grass
  species.

- `betadiversity_R_percent_species_grasses`: Raw turnover percentage for
  grass species.

- `betadiversity_R_genera_grasses`: Raw turnover count for grass genera.

- `betadiversity_R_percent_genera_grasses`: Raw turnover percentage for
  grass genera.

**Response variables - Beta diversity Sorensen (8):**

- `betadiversity_sorensen_species`: Sorensen dissimilarity for species.

- `betadiversity_sorensen_genera`: Sorensen dissimilarity for genera.

- `betadiversity_sorensen_families`: Sorensen dissimilarity for
  families.

- `betadiversity_sorensen_species_trees`: Sorensen dissimilarity for
  tree species.

- `betadiversity_sorensen_genera_trees`: Sorensen dissimilarity for tree
  genera.

- `betadiversity_sorensen_families_trees`: Sorensen dissimilarity for
  tree families.

- `betadiversity_sorensen_species_grasses`: Sorensen dissimilarity for
  grass species.

- `betadiversity_sorensen_genera_grasses`: Sorensen dissimilarity for
  grass genera.

**Response variables - Beta diversity Simpson (8):**

- `betadiversity_simpson_species`: Simpson dissimilarity for species.

- `betadiversity_simpson_genera`: Simpson dissimilarity for genera.

- `betadiversity_simpson_families`: Simpson dissimilarity for families.

- `betadiversity_simpson_species_trees`: Simpson dissimilarity for tree
  species.

- `betadiversity_simpson_genera_trees`: Simpson dissimilarity for tree
  genera.

- `betadiversity_simpson_families_trees`: Simpson dissimilarity for tree
  families.

- `betadiversity_simpson_species_grasses`: Simpson dissimilarity for
  grass species.

- `betadiversity_simpson_genera_grasses`: Simpson dissimilarity for
  grass genera.

**Predictor variables - Sampling bias (7):**

- `bias_records`: Total GBIF records in ecoregion.

- `bias_records_km2`: GBIF records per square kilometer.

- `bias_species_record`: Species per record ratio.

- `bias_species_record_per_km2`: Species per record ratio per square
  kilometer.

- `bias_log_records_km2`: Log-transformed records per square kilometer.

- `bias_log_species_record_per_km2`: Log-transformed species per record
  ratio per square kilometer.

- `bias_sampling`: Sampling bias index.

**Predictor variables - Geographic/geometric (14):**

- `geo_neighbors_count`: Number of neighboring ecoregions.

- `geo_neighbors_area_km2`: Total area of neighboring ecoregions in
  square kilometers.

- `geo_neighbors_aridity_mean`: Mean aridity of neighboring ecoregions.

- `geo_latitude_mean`: Mean latitude of ecoregion centroid.

- `geo_latitude_range`: Latitudinal extent of ecoregion.

- `geo_longitude_mean`: Mean longitude of ecoregion centroid.

- `geo_longitude_range`: Longitudinal extent of ecoregion.

- `geo_area_km2`: Ecoregion area in square kilometers.

- `geo_polygons_count`: Number of polygons in multipolygon geometry.

- `geo_perimeter_km`: Ecoregion perimeter in kilometers.

- `geo_shared_perimeter_km`: Shared perimeter with neighbors in
  kilometers.

- `geo_shared_perimeter_fraction`: Fraction of perimeter shared with
  neighbors.

- `geo_distance_to_ocean`: Distance to nearest ocean in kilometers.

- `geo_elevation_mean`: Mean elevation in meters.

**Predictor variables - Human impact (5):**

- `human_population`: Total human population in ecoregion.

- `human_population_density`: Human population density per square
  kilometer.

- `human_footprint_minimum`: Minimum human footprint index.

- `human_footprint_maximum`: Maximum human footprint index.

- `human_footprint_mean`: Mean human footprint index.

**Predictor variables - Climate change (2):**

- `climate_velocity_lgm_mean`: Mean climate velocity since Last Glacial
  Maximum.

- `climate_hypervolume`: Climate hypervolume (niche space size).

**Predictor variables - Landcover (3):**

- `landcover_bare_percent_mean`: Mean percentage of bare ground.

- `landcover_herbs_percent_mean`: Mean percentage of herbaceous
  vegetation.

- `landcover_trees_percent_mean`: Mean percentage of tree cover.

**Predictor variables - Fragmentation (19):**

- `fragmentation_ai`: Aggregation index.

- `fragmentation_area_mn`: Mean patch area.

- `fragmentation_ca`: Total class area.

- `fragmentation_clumpy`: Clumpiness index.

- `fragmentation_cohesion`: Patch cohesion index.

- `fragmentation_contig_mn`: Mean contiguity index.

- `fragmentation_core_mn`: Mean core area.

- `fragmentation_cpland`: Core area percentage of landscape.

- `fragmentation_dcore_mn`: Mean disjunct core area.

- `fragmentation_division`: Landscape division index.

- `fragmentation_ed`: Edge density.

- `fragmentation_lsi`: Landscape shape index.

- `fragmentation_mesh`: Effective mesh size.

- `fragmentation_ndca`: Number of disjunct core areas.

- `fragmentation_nlsi`: Normalized landscape shape index.

- `fragmentation_np`: Number of patches.

- `fragmentation_shape_mn`: Mean shape index.

- `fragmentation_tca`: Total core area.

- `fragmentation_te`: Total edge.

**Predictor variables - Atmospheric (13):**

- `air_humidity_max`: Maximum air humidity.

- `air_humidity_mean`: Mean air humidity.

- `air_humidity_min`: Minimum air humidity.

- `air_humidity_range`: Air humidity range.

- `aridity_mean`: Mean aridity index.

- `cloud_cover_max`: Maximum cloud cover.

- `cloud_cover_mean`: Mean cloud cover.

- `cloud_cover_min`: Minimum cloud cover.

- `cloud_cover_range`: Cloud cover range.

- `evapotranspiration_max`: Maximum evapotranspiration.

- `evapotranspiration_mean`: Mean evapotranspiration.

- `evapotranspiration_min`: Minimum evapotranspiration.

- `evapotranspiration_range`: Evapotranspiration range.

**Predictor variables - Precipitation (8):**

- `precipitation_seasonality`: Precipitation seasonality (coefficient of
  variation).

- `precipitation_total`: Total annual precipitation.

- `precipitation_coldest_quarter`: Precipitation of coldest quarter.

- `precipitation_driest_month`: Precipitation of driest month.

- `precipitation_driest_quarter`: Precipitation of driest quarter.

- `precipitation_warmest_quarter`: Precipitation of warmest quarter.

- `precipitation_wettest_month`: Precipitation of wettest month.

- `precipitation_wettest_quarter`: Precipitation of wettest quarter.

**Predictor variables - Temperature (11):**

- `temperature_isothermality`: Temperature isothermality.

- `temperature_mean_daily_range`: Mean daily temperature range.

- `temperature_mean`: Mean annual temperature.

- `temperature_range`: Annual temperature range.

- `temperature_seasonality`: Temperature seasonality.

- `temperature_coldest_month`: Mean temperature of coldest month.

- `temperature_coldest_quarter`: Mean temperature of coldest quarter.

- `temperature_driest_quarter`: Mean temperature of driest quarter.

- `temperature_warmest_month`: Mean temperature of warmest month.

- `temperature_warmest_quarter`: Mean temperature of warmest quarter.

- `temperature_wettest_quarter`: Mean temperature of wettest quarter.

**Predictor variables - Soil properties (6):**

- `soil_clay`: Soil clay content.

- `soil_nitrogen`: Soil nitrogen content.

- `soil_organic_carbon`: Soil organic carbon content.

- `soil_ph`: Soil pH.

- `soil_sand`: Soil sand content.

- `soil_silt`: Soil silt content.

**Predictor variables - Soil temperature (4):**

- `soil_temperature_max`: Maximum soil temperature.

- `soil_temperature_mean`: Mean soil temperature.

- `soil_temperature_min`: Minimum soil temperature.

- `soil_temperature_range`: Soil temperature range.

**Predictor variables - NDVI (4):**

- `ndvi_max`: Maximum NDVI (1999-2019).

- `ndvi_mean`: Mean NDVI (1999-2019).

- `ndvi_min`: Minimum NDVI (1999-2019).

- `ndvi_range`: NDVI range (1999-2019).

**Geometry:**

- `geometry`: Point centroid geometry (WGS84, EPSG:4326).

## Source

**Biodiversity data:**

- GBIF Plantae Dataset (September 15, 2020).
  [doi:10.15468/dl.xh5y5g](https://doi.org/10.15468/dl.xh5y5g)

**Spatial boundaries:**

- Dinerstein, E., et al. (2017). An Ecoregion-Based Approach to
  Protecting Half the Terrestrial Realm. *BioScience*, 67(6), 534-545.
  [doi:10.1093/biosci/bix014](https://doi.org/10.1093/biosci/bix014)

**Climate predictors (precipitation, temperature, atmospheric):**

- Karger, D.N., et al. (2021). Climatologies at high resolution for the
  earth's land surface areas. EnviDat.
  [doi:10.16904/envidat.228.v2.1](https://doi.org/10.16904/envidat.228.v2.1)

**Soil properties:**

- Hengl, T., et al. (2017). SoilGrids250m: Global gridded soil
  information based on machine learning. *PLOS ONE*, 12(2), e0169748.
  [doi:10.1371/journal.pone.0169748](https://doi.org/10.1371/journal.pone.0169748)

**Soil temperature:**

- Lembrechts, J.J., et al. (2021). Mismatches between soil and air
  temperature. *Global Change Biology*.
  [doi:10.1111/gcb.16060](https://doi.org/10.1111/gcb.16060)

**NDVI:**

- Copernicus Global Land Service: NDVI Long Term Statistics v3
  (1999-2019). <https://land.copernicus.eu/global/products/ndvi>

**Landcover and fragmentation:**

- Buchhorn, M., et al. (2020). Copernicus Global Land Service: Land
  Cover 100m: collection 3: epoch 2019: Globe. Zenodo.
  [doi:10.5281/zenodo.3939050](https://doi.org/10.5281/zenodo.3939050)

**Topographic/geographic features:**

- CGIAR-CSI SRTM 90m Digital Elevation Database.
  <https://srtm.csi.cgiar.org/>

## See also

Other plantae:
[`plantae_predictors`](https://blasbenito.github.io/spatialData/reference/plantae_predictors.md),
[`plantae_responses`](https://blasbenito.github.io/spatialData/reference/plantae_responses.md)
