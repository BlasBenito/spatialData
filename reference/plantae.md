# Plant diversity metrics for global ecoregions

Plant diversity metrics (richness, rarity, beta diversity) obtained from
GBIF Plantae records for global ecoregions. Includes metrics for all
plants, trees, and grasses at species, genus, and family taxonomic
levels. Ecoregion boundaries are derived from [Ecoregions
2017](https://ecoregions2017.appspot.com/). Original polygon geometries
have been converted to point centroids to reduce file size while
preserving spatial context. Use
[`plantae_extra()`](https://blasbenito.github.io/spatialData/reference/plantae_extra.md)
to download the version with original polygon geometries.

The GBIF download comprised **244,830,168 records from 4,741 datasets**,
filtered to records with coordinates, no geospatial issues, and
occurrence status "present".

**Tree species** were identified by cross-referencing GBIF records with
the BGCI Global Tree Search database (BGCI 2020). **Grasses** were
defined as members of family Poaceae.

**Rarity-weighted richness** (Williams et al. 1996): each taxon is
scored with the inverse of its number of spatial presence records in
GBIF, then scores are summed per ecoregion. **Mean rarity** is the mean
of these inverse presence record counts per taxon in an ecoregion.

**Beta diversity** was computed between each ecoregion and its immediate
neighboring ecoregions. Sorensen dissimilarity: Bsor = 1 - 2a/(2a+b+c).
Simpson dissimilarity: Bsim = min(b,c)/(min(b,c)+a), following Koleff et
al. (2003).

**Fragmentation metrics** were computed with the R package
`landscapemetrics` (Hesselbarth et al. 2019) at 5 km resolution in
Lambert Azimuthal Equal-Area projection.

**Climate hypervolume** was computed using
`hypervolume::hypervolume_svm()`.

**Aridity** is computed as 1 minus the aridity index of Trabucco and
Zomer (2019), so maximum aridity is coded as 1.

Environmental predictors were extracted as mean pixel values per
ecoregion from rasters at 1 km resolution.

## Usage

``` r
data(plantae)
```

## Format

An sf data frame with 662 rows (ecoregions) and 143 columns:

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
  species (sum of inverse spatial presence record counts per taxon;
  Williams et al. 1996).

- `rarity_weighted_richness_genera`: Rarity-weighted richness for genera
  (sum of inverse spatial presence record counts per taxon).

- `rarity_weighted_richness_species_trees`: Rarity-weighted richness for
  tree species (sum of inverse spatial presence record counts per
  taxon).

- `rarity_weighted_richness_genera_trees`: Rarity-weighted richness for
  tree genera (sum of inverse spatial presence record counts per taxon).

- `rarity_weighted_richness_species_grasses`: Rarity-weighted richness
  for grass species (sum of inverse spatial presence record counts per
  taxon).

- `rarity_weighted_richness_genera_grasses`: Rarity-weighted richness
  for grass genera (sum of inverse spatial presence record counts per
  taxon).

**Response variables - Mean rarity (6):**

- `mean_rarity_species`: Mean rarity index for species (mean of inverse
  spatial presence record counts per taxon).

- `mean_rarity_genera`: Mean rarity index for genera (mean of inverse
  spatial presence record counts per taxon).

- `mean_rarity_species_trees`: Mean rarity index for tree species (mean
  of inverse spatial presence record counts per taxon).

- `mean_rarity_genera_trees`: Mean rarity index for tree genera (mean of
  inverse spatial presence record counts per taxon).

- `mean_rarity_species_grasses`: Mean rarity index for grass species
  (mean of inverse spatial presence record counts per taxon).

- `mean_rarity_genera_grasses`: Mean rarity index for grass genera (mean
  of inverse spatial presence record counts per taxon).

**Response variables - Beta diversity R (absolute richness difference)
(16):**

- `betadiversity_R_species`: Absolute richness difference between
  ecoregion and neighbors for species.

- `betadiversity_R_percent_species`: Absolute richness difference as
  percentage for species.

- `betadiversity_R_genera`: Absolute richness difference between
  ecoregion and neighbors for genera.

- `betadiversity_R_percent_genera`: Absolute richness difference as
  percentage for genera.

- `betadiversity_R_families`: Absolute richness difference between
  ecoregion and neighbors for families.

- `betadiversity_R_percent_families`: Absolute richness difference as
  percentage for families.

- `betadiversity_R_species_trees`: Absolute richness difference between
  ecoregion and neighbors for tree species.

- `betadiversity_R_percent_species_trees`: Absolute richness difference
  as percentage for tree species.

- `betadiversity_R_genera_trees`: Absolute richness difference between
  ecoregion and neighbors for tree genera.

- `betadiversity_R_percent_genera_trees`: Absolute richness difference
  as percentage for tree genera.

- `betadiversity_R_families_trees`: Absolute richness difference between
  ecoregion and neighbors for tree families.

- `betadiversity_R_percent_families_trees`: Absolute richness difference
  as percentage for tree families.

- `betadiversity_R_species_grasses`: Absolute richness difference
  between ecoregion and neighbors for grass species.

- `betadiversity_R_percent_species_grasses`: Absolute richness
  difference as percentage for grass species.

- `betadiversity_R_genera_grasses`: Absolute richness difference between
  ecoregion and neighbors for grass genera.

- `betadiversity_R_percent_genera_grasses`: Absolute richness difference
  as percentage for grass genera.

**Response variables - Beta diversity Sorensen (8):**

- `betadiversity_sorensen_species`: Sorensen dissimilarity for species
  (Bsor = 1 - 2a/(2a+b+c); Koleff et al. 2003).

- `betadiversity_sorensen_genera`: Sorensen dissimilarity for genera
  (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_families`: Sorensen dissimilarity for families
  (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_species_trees`: Sorensen dissimilarity for
  tree species (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_genera_trees`: Sorensen dissimilarity for tree
  genera (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_families_trees`: Sorensen dissimilarity for
  tree families (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_species_grasses`: Sorensen dissimilarity for
  grass species (Bsor = 1 - 2a/(2a+b+c)).

- `betadiversity_sorensen_genera_grasses`: Sorensen dissimilarity for
  grass genera (Bsor = 1 - 2a/(2a+b+c)).

**Response variables - Beta diversity Simpson (8):**

- `betadiversity_simpson_species`: Simpson dissimilarity for species
  (Bsim = min(b,c)/(min(b,c)+a); Koleff et al. 2003).

- `betadiversity_simpson_genera`: Simpson dissimilarity for genera (Bsim
  = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_families`: Simpson dissimilarity for families
  (Bsim = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_species_trees`: Simpson dissimilarity for tree
  species (Bsim = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_genera_trees`: Simpson dissimilarity for tree
  genera (Bsim = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_families_trees`: Simpson dissimilarity for tree
  families (Bsim = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_species_grasses`: Simpson dissimilarity for
  grass species (Bsim = min(b,c)/(min(b,c)+a)).

- `betadiversity_simpson_genera_grasses`: Simpson dissimilarity for
  grass genera (Bsim = min(b,c)/(min(b,c)+a)).

**Predictor variables - Sampling bias (1):**

- `bias_log_records`: Logarithm of the total GBIF records in ecoregion.

**Predictor variables - Geographic/geometric (10):**

- `geo_neighbors_count`: Number of neighboring ecoregions.

- `geo_neighbors_area_km2`: Total area of neighboring ecoregions in
  square kilometers.

- `geo_neighbors_aridity_mean`: Mean aridity of neighboring ecoregions.

- `geo_area_km2`: Ecoregion area in square kilometers.

- `geo_polygons_count`: Number of polygons in multipolygon geometry.

- `geo_perimeter_km`: Ecoregion perimeter in kilometers.

- `geo_shared_perimeter_km`: Shared perimeter with neighbors in
  kilometers.

- `geo_shared_perimeter_fraction`: Fraction of perimeter shared with
  neighbors.

- `geo_distance_to_ocean`: Distance to nearest ocean in kilometers.

- `geo_elevation_mean`: Mean elevation in meters.

**Predictor variables - Human impact (3):**

- `human_population`: Total human population in ecoregion.

- `human_population_density`: Human population density per square
  kilometer.

- `human_footprint_mean`: Mean human footprint index.

**Predictor variables - Climate (34):**

- `climate_velocity_lgm_mean`: Mean climate velocity since Last Glacial
  Maximum.

- `climate_hypervolume`: Climate hypervolume (niche space size),
  computed with `hypervolume::hypervolume_svm()`.

- `air_humidity_max`: Maximum near-surface relative humidity (%).

- `air_humidity_mean`: Mean near-surface relative humidity (%).

- `air_humidity_min`: Minimum near-surface relative humidity (%).

- `air_humidity_range`: Near-surface relative humidity range (%).

- `aridity_mean`: Mean aridity (1 minus aridity index; higher values
  indicate greater aridity).

- `cloud_cover_max`: Maximum cloud cover (%).

- `cloud_cover_mean`: Mean cloud cover (%).

- `cloud_cover_min`: Minimum cloud cover (%).

- `cloud_cover_range`: Cloud cover range (%).

- `evapotranspiration_max`: Maximum potential evapotranspiration (kg m-2
  month-1; Penman-Monteith).

- `evapotranspiration_mean`: Mean potential evapotranspiration (kg m-2
  month-1; Penman-Monteith).

- `evapotranspiration_min`: Minimum potential evapotranspiration (kg m-2
  month-1; Penman-Monteith).

- `evapotranspiration_range`: Potential evapotranspiration range (kg m-2
  month-1; Penman-Monteith).

- `precipitation_seasonality`: Precipitation seasonality (coefficient of
  variation of monthly estimates; CHELSA bio15).

- `precipitation_total`: Total annual precipitation (kg m-2 year-1;
  CHELSA bio12).

- `precipitation_coldest_quarter`: Precipitation of coldest quarter (kg
  m-2; CHELSA bio19).

- `precipitation_driest_month`: Precipitation of driest month (kg m-2;
  CHELSA bio14).

- `precipitation_driest_quarter`: Precipitation of driest quarter (kg
  m-2; CHELSA bio17).

- `precipitation_warmest_quarter`: Precipitation of warmest quarter (kg
  m-2; CHELSA bio18).

- `precipitation_wettest_month`: Precipitation of wettest month (kg m-2;
  CHELSA bio13).

- `precipitation_wettest_quarter`: Precipitation of wettest quarter (kg
  m-2; CHELSA bio16).

- `temperature_isothermality`: Isothermality: ratio of diurnal to annual
  temperature variation (degrees C; CHELSA bio3).

- `temperature_mean_daily_range`: Mean diurnal temperature range
  (degrees C; CHELSA bio2).

- `temperature_mean`: Mean annual temperature (degrees C; CHELSA bio1).

- `temperature_range`: Annual temperature range (degrees C; CHELSA
  bio7).

- `temperature_seasonality`: Temperature seasonality as standard
  deviation of monthly means (degrees C; CHELSA bio4).

- `temperature_coldest_month`: Minimum temperature of coldest month
  (degrees C; CHELSA bio6).

- `temperature_coldest_quarter`: Mean temperature of coldest quarter
  (degrees C; CHELSA bio11).

- `temperature_driest_quarter`: Mean temperature of driest quarter
  (degrees C; CHELSA bio9).

- `temperature_warmest_month`: Maximum temperature of warmest month
  (degrees C; CHELSA bio5).

- `temperature_warmest_quarter`: Mean temperature of warmest quarter
  (degrees C; CHELSA bio10).

- `temperature_wettest_quarter`: Mean temperature of wettest quarter
  (degrees C; CHELSA bio8).

**Predictor variables - Landcover (3):**

- `landcover_bare_percent_mean`: Mean percentage of bare ground.

- `landcover_herbs_percent_mean`: Mean percentage of herbaceous
  vegetation.

- `landcover_trees_percent_mean`: Mean percentage of tree cover.

**Predictor variables - Fragmentation (19):** Computed at 5 km
resolution in Lambert Azimuthal Equal-Area projection using
`landscapemetrics` (Hesselbarth et al. 2019).

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

**Predictor variables - Soil (10):**

- `soil_clay`: Soil clay content (%).

- `soil_nitrogen`: Soil nitrogen content (%).

- `soil_organic_carbon`: Soil organic carbon content (%).

- `soil_ph`: Soil pH.

- `soil_sand`: Soil sand content (%).

- `soil_silt`: Soil silt content (%).

- `soil_temperature_max`: Maximum soil temperature (degrees C).

- `soil_temperature_mean`: Mean soil temperature (degrees C).

- `soil_temperature_min`: Minimum soil temperature (degrees C).

- `soil_temperature_range`: Soil temperature range (degrees C).

**Predictor variables - NDVI (4):**

- `ndvi_max`: Maximum NDVI (1999-2019).

- `ndvi_mean`: Mean NDVI (1999-2019).

- `ndvi_min`: Minimum NDVI (1999-2019).

- `ndvi_range`: NDVI range (1999-2019).

**Geometry:**

- `geometry`: Ecoregion centroids, POINT geometry (WGS84, EPSG:4326).

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

**Aridity index:**

- Trabucco, A. & Zomer, R.J. (2019). Global Aridity Index and Potential
  Evapotranspiration Climate Database v2. CGIAR-CSI.
  [doi:10.6084/m9.figshare.7504448.v3](https://doi.org/10.6084/m9.figshare.7504448.v3)

**Tree species identification:**

- BGCI (2020). GlobalTreeSearch online database. Botanic Gardens
  Conservation International.
  <https://tools.bgci.org/global_tree_search.php>

**Fragmentation metrics:**

- Hesselbarth, M.H.K., et al. (2019). landscapemetrics: an open-source R
  tool to calculate landscape metrics. *Ecography*, 42(10), 1648-1657.
  [doi:10.1111/ecog.04617](https://doi.org/10.1111/ecog.04617)

**Beta diversity methodology:**

- Koleff, P., Gaston, K.J. & Lennon, J.J. (2003). Measuring beta
  diversity for presence-absence data. *Journal of Animal Ecology*,
  72(3), 367-382.
  [doi:10.1046/j.1365-2656.2003.00710.x](https://doi.org/10.1046/j.1365-2656.2003.00710.x)

**Rarity-weighted richness:**

- Williams, P.H., et al. (1996). A comparison of richness hotspots,
  rarity hotspots, and complementary areas for conserving diversity of
  British birds. *Conservation Biology*, 10(1), 155-174.

**Human footprint:**

- Venter, O., et al. (2016). Global terrestrial Human Footprint maps for
  1993 and 2009. *Scientific Data*, 3, 160067.
  [doi:10.1038/sdata.2016.67](https://doi.org/10.1038/sdata.2016.67)

## See also

Other plantae:
[`plantae_east()`](https://blasbenito.github.io/spatialData/reference/plantae_east.md),
[`plantae_extra()`](https://blasbenito.github.io/spatialData/reference/plantae_extra.md),
[`plantae_predictors`](https://blasbenito.github.io/spatialData/reference/plantae_predictors.md),
[`plantae_responses`](https://blasbenito.github.io/spatialData/reference/plantae_responses.md),
[`plantae_west()`](https://blasbenito.github.io/spatialData/reference/plantae_west.md)
