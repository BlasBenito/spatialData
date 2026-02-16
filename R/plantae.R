#' @title Plant diversity metrics for global ecoregions
#' @description Plant diversity metrics (richness, rarity, endemism, beta diversity) obtained from
#' GBIF Plantae records for global ecoregions. Includes metrics for all plants, trees, and grasses
#' at species, genus, and family taxonomic levels. Ecoregion boundaries are derived from
#' [Ecoregions 2017](https://ecoregions2017.appspot.com/). Original polygon geometries have been
#' converted to point centroids to reduce file size while preserving spatial context.
#' @usage data(plantae)
#' @format An sf data frame with 662 rows (ecoregions) and 155 columns:
#'
#' **Identifier columns:**
#' \itemize{
#'   \item `ecoregion_id`: Unique ecoregion identifier.
#'   \item `ecoregion_name`: Ecoregion name.
#'   \item `ecoregion_biome`: Biome classification.
#'   \item `ecoregion_realm`: Biogeographic realm.
#'   \item `ecoregion_continent`: Continent name.
#' }
#'
#' **Response variables - Richness (9):**
#' \itemize{
#'   \item `richness_species`: Number of plant species.
#'   \item `richness_genera`: Number of plant genera.
#'   \item `richness_families`: Number of plant families.
#'   \item `richness_classes`: Number of plant classes.
#'   \item `richness_species_trees`: Number of tree species.
#'   \item `richness_genera_trees`: Number of tree genera.
#'   \item `richness_families_trees`: Number of tree families.
#'   \item `richness_species_grasses`: Number of grass species.
#'   \item `richness_genera_grasses`: Number of grass genera.
#' }
#'
#' **Response variables - Rarity-weighted richness (6):**
#' \itemize{
#'   \item `rarity_weighted_richness_species`: Rarity-weighted richness for species (Williams et al. 1996).
#'   \item `rarity_weighted_richness_genera`: Rarity-weighted richness for genera.
#'   \item `rarity_weighted_richness_species_trees`: Rarity-weighted richness for tree species.
#'   \item `rarity_weighted_richness_genera_trees`: Rarity-weighted richness for tree genera.
#'   \item `rarity_weighted_richness_species_grasses`: Rarity-weighted richness for grass species.
#'   \item `rarity_weighted_richness_genera_grasses`: Rarity-weighted richness for grass genera.
#' }
#'
#' **Response variables - Mean rarity (6):**
#' \itemize{
#'   \item `mean_rarity_species`: Mean rarity index for species.
#'   \item `mean_rarity_genera`: Mean rarity index for genera.
#'   \item `mean_rarity_species_trees`: Mean rarity index for tree species.
#'   \item `mean_rarity_genera_trees`: Mean rarity index for tree genera.
#'   \item `mean_rarity_species_grasses`: Mean rarity index for grass species.
#'   \item `mean_rarity_genera_grasses`: Mean rarity index for grass genera.
#' }
#'
#' **Response variables - Beta diversity R (raw turnover) (16):**
#' \itemize{
#'   \item `betadiversity_R_species`: Raw turnover count for species.
#'   \item `betadiversity_R_percent_species`: Raw turnover percentage for species.
#'   \item `betadiversity_R_genera`: Raw turnover count for genera.
#'   \item `betadiversity_R_percent_genera`: Raw turnover percentage for genera.
#'   \item `betadiversity_R_families`: Raw turnover count for families.
#'   \item `betadiversity_R_percent_families`: Raw turnover percentage for families.
#'   \item `betadiversity_R_species_trees`: Raw turnover count for tree species.
#'   \item `betadiversity_R_percent_species_trees`: Raw turnover percentage for tree species.
#'   \item `betadiversity_R_genera_trees`: Raw turnover count for tree genera.
#'   \item `betadiversity_R_percent_genera_trees`: Raw turnover percentage for tree genera.
#'   \item `betadiversity_R_families_trees`: Raw turnover count for tree families.
#'   \item `betadiversity_R_percent_families_trees`: Raw turnover percentage for tree families.
#'   \item `betadiversity_R_species_grasses`: Raw turnover count for grass species.
#'   \item `betadiversity_R_percent_species_grasses`: Raw turnover percentage for grass species.
#'   \item `betadiversity_R_genera_grasses`: Raw turnover count for grass genera.
#'   \item `betadiversity_R_percent_genera_grasses`: Raw turnover percentage for grass genera.
#' }
#'
#' **Response variables - Beta diversity Sorensen (8):**
#' \itemize{
#'   \item `betadiversity_sorensen_species`: Sorensen dissimilarity for species.
#'   \item `betadiversity_sorensen_genera`: Sorensen dissimilarity for genera.
#'   \item `betadiversity_sorensen_families`: Sorensen dissimilarity for families.
#'   \item `betadiversity_sorensen_species_trees`: Sorensen dissimilarity for tree species.
#'   \item `betadiversity_sorensen_genera_trees`: Sorensen dissimilarity for tree genera.
#'   \item `betadiversity_sorensen_families_trees`: Sorensen dissimilarity for tree families.
#'   \item `betadiversity_sorensen_species_grasses`: Sorensen dissimilarity for grass species.
#'   \item `betadiversity_sorensen_genera_grasses`: Sorensen dissimilarity for grass genera.
#' }
#'
#' **Response variables - Beta diversity Simpson (8):**
#' \itemize{
#'   \item `betadiversity_simpson_species`: Simpson dissimilarity for species.
#'   \item `betadiversity_simpson_genera`: Simpson dissimilarity for genera.
#'   \item `betadiversity_simpson_families`: Simpson dissimilarity for families.
#'   \item `betadiversity_simpson_species_trees`: Simpson dissimilarity for tree species.
#'   \item `betadiversity_simpson_genera_trees`: Simpson dissimilarity for tree genera.
#'   \item `betadiversity_simpson_families_trees`: Simpson dissimilarity for tree families.
#'   \item `betadiversity_simpson_species_grasses`: Simpson dissimilarity for grass species.
#'   \item `betadiversity_simpson_genera_grasses`: Simpson dissimilarity for grass genera.
#' }
#'
#' **Predictor variables - Sampling bias (7):**
#' \itemize{
#'   \item `bias_records`: Total GBIF records in ecoregion.
#'   \item `bias_records_km2`: GBIF records per square kilometer.
#'   \item `bias_species_record`: Species per record ratio.
#'   \item `bias_species_record_per_km2`: Species per record ratio per square kilometer.
#'   \item `bias_log_records_km2`: Log-transformed records per square kilometer.
#'   \item `bias_log_species_record_per_km2`: Log-transformed species per record ratio per square kilometer.
#'   \item `bias_sampling`: Sampling bias index.
#' }
#'
#' **Predictor variables - Geographic/geometric (14):**
#' \itemize{
#'   \item `geo_neighbors_count`: Number of neighboring ecoregions.
#'   \item `geo_neighbors_area_km2`: Total area of neighboring ecoregions in square kilometers.
#'   \item `geo_neighbors_aridity_mean`: Mean aridity of neighboring ecoregions.
#'   \item `geo_latitude_mean`: Mean latitude of ecoregion centroid.
#'   \item `geo_latitude_range`: Latitudinal extent of ecoregion.
#'   \item `geo_longitude_mean`: Mean longitude of ecoregion centroid.
#'   \item `geo_longitude_range`: Longitudinal extent of ecoregion.
#'   \item `geo_area_km2`: Ecoregion area in square kilometers.
#'   \item `geo_polygons_count`: Number of polygons in multipolygon geometry.
#'   \item `geo_perimeter_km`: Ecoregion perimeter in kilometers.
#'   \item `geo_shared_perimeter_km`: Shared perimeter with neighbors in kilometers.
#'   \item `geo_shared_perimeter_fraction`: Fraction of perimeter shared with neighbors.
#'   \item `geo_distance_to_ocean`: Distance to nearest ocean in kilometers.
#'   \item `geo_elevation_mean`: Mean elevation in meters.
#' }
#'
#' **Predictor variables - Human impact (5):**
#' \itemize{
#'   \item `human_population`: Total human population in ecoregion.
#'   \item `human_population_density`: Human population density per square kilometer.
#'   \item `human_footprint_minimum`: Minimum human footprint index.
#'   \item `human_footprint_maximum`: Maximum human footprint index.
#'   \item `human_footprint_mean`: Mean human footprint index.
#' }
#'
#' **Predictor variables - Climate change (2):**
#' \itemize{
#'   \item `climate_velocity_lgm_mean`: Mean climate velocity since Last Glacial Maximum.
#'   \item `climate_hypervolume`: Climate hypervolume (niche space size).
#' }
#'
#' **Predictor variables - Landcover (3):**
#' \itemize{
#'   \item `landcover_bare_percent_mean`: Mean percentage of bare ground.
#'   \item `landcover_herbs_percent_mean`: Mean percentage of herbaceous vegetation.
#'   \item `landcover_trees_percent_mean`: Mean percentage of tree cover.
#' }
#'
#' **Predictor variables - Fragmentation (19):**
#' \itemize{
#'   \item `fragmentation_ai`: Aggregation index.
#'   \item `fragmentation_area_mn`: Mean patch area.
#'   \item `fragmentation_ca`: Total class area.
#'   \item `fragmentation_clumpy`: Clumpiness index.
#'   \item `fragmentation_cohesion`: Patch cohesion index.
#'   \item `fragmentation_contig_mn`: Mean contiguity index.
#'   \item `fragmentation_core_mn`: Mean core area.
#'   \item `fragmentation_cpland`: Core area percentage of landscape.
#'   \item `fragmentation_dcore_mn`: Mean disjunct core area.
#'   \item `fragmentation_division`: Landscape division index.
#'   \item `fragmentation_ed`: Edge density.
#'   \item `fragmentation_lsi`: Landscape shape index.
#'   \item `fragmentation_mesh`: Effective mesh size.
#'   \item `fragmentation_ndca`: Number of disjunct core areas.
#'   \item `fragmentation_nlsi`: Normalized landscape shape index.
#'   \item `fragmentation_np`: Number of patches.
#'   \item `fragmentation_shape_mn`: Mean shape index.
#'   \item `fragmentation_tca`: Total core area.
#'   \item `fragmentation_te`: Total edge.
#' }
#'
#' **Predictor variables - Atmospheric (13):**
#' \itemize{
#'   \item `air_humidity_max`: Maximum air humidity.
#'   \item `air_humidity_mean`: Mean air humidity.
#'   \item `air_humidity_min`: Minimum air humidity.
#'   \item `air_humidity_range`: Air humidity range.
#'   \item `aridity_mean`: Mean aridity index.
#'   \item `cloud_cover_max`: Maximum cloud cover.
#'   \item `cloud_cover_mean`: Mean cloud cover.
#'   \item `cloud_cover_min`: Minimum cloud cover.
#'   \item `cloud_cover_range`: Cloud cover range.
#'   \item `evapotranspiration_max`: Maximum evapotranspiration.
#'   \item `evapotranspiration_mean`: Mean evapotranspiration.
#'   \item `evapotranspiration_min`: Minimum evapotranspiration.
#'   \item `evapotranspiration_range`: Evapotranspiration range.
#' }
#'
#' **Predictor variables - Precipitation (8):**
#' \itemize{
#'   \item `precipitation_seasonality`: Precipitation seasonality (coefficient of variation).
#'   \item `precipitation_total`: Total annual precipitation.
#'   \item `precipitation_coldest_quarter`: Precipitation of coldest quarter.
#'   \item `precipitation_driest_month`: Precipitation of driest month.
#'   \item `precipitation_driest_quarter`: Precipitation of driest quarter.
#'   \item `precipitation_warmest_quarter`: Precipitation of warmest quarter.
#'   \item `precipitation_wettest_month`: Precipitation of wettest month.
#'   \item `precipitation_wettest_quarter`: Precipitation of wettest quarter.
#' }
#'
#' **Predictor variables - Temperature (11):**
#' \itemize{
#'   \item `temperature_isothermality`: Temperature isothermality.
#'   \item `temperature_mean_daily_range`: Mean daily temperature range.
#'   \item `temperature_mean`: Mean annual temperature.
#'   \item `temperature_range`: Annual temperature range.
#'   \item `temperature_seasonality`: Temperature seasonality.
#'   \item `temperature_coldest_month`: Mean temperature of coldest month.
#'   \item `temperature_coldest_quarter`: Mean temperature of coldest quarter.
#'   \item `temperature_driest_quarter`: Mean temperature of driest quarter.
#'   \item `temperature_warmest_month`: Mean temperature of warmest month.
#'   \item `temperature_warmest_quarter`: Mean temperature of warmest quarter.
#'   \item `temperature_wettest_quarter`: Mean temperature of wettest quarter.
#' }
#'
#' **Predictor variables - Soil properties (6):**
#' \itemize{
#'   \item `soil_clay`: Soil clay content.
#'   \item `soil_nitrogen`: Soil nitrogen content.
#'   \item `soil_organic_carbon`: Soil organic carbon content.
#'   \item `soil_ph`: Soil pH.
#'   \item `soil_sand`: Soil sand content.
#'   \item `soil_silt`: Soil silt content.
#' }
#'
#' **Predictor variables - Soil temperature (4):**
#' \itemize{
#'   \item `soil_temperature_max`: Maximum soil temperature.
#'   \item `soil_temperature_mean`: Mean soil temperature.
#'   \item `soil_temperature_min`: Minimum soil temperature.
#'   \item `soil_temperature_range`: Soil temperature range.
#' }
#'
#' **Predictor variables - NDVI (4):**
#' \itemize{
#'   \item `ndvi_max`: Maximum NDVI (1999-2019).
#'   \item `ndvi_mean`: Mean NDVI (1999-2019).
#'   \item `ndvi_min`: Minimum NDVI (1999-2019).
#'   \item `ndvi_range`: NDVI range (1999-2019).
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point centroid geometry (WGS84, EPSG:4326).
#' }
#'
#' @source
#' **Biodiversity data:**
#' \itemize{
#'   \item GBIF Plantae Dataset (September 15, 2020). \doi{10.15468/dl.xh5y5g}
#' }
#'
#' **Spatial boundaries:**
#' \itemize{
#'   \item Dinerstein, E., et al. (2017). An Ecoregion-Based Approach to Protecting Half the Terrestrial Realm. \emph{BioScience}, 67(6), 534-545. \doi{10.1093/biosci/bix014}
#' }
#'
#' **Climate predictors (precipitation, temperature, atmospheric):**
#' \itemize{
#'   \item Karger, D.N., et al. (2021). Climatologies at high resolution for the earth's land surface areas. EnviDat. \doi{10.16904/envidat.228.v2.1}
#' }
#'
#' **Soil properties:**
#' \itemize{
#'   \item Hengl, T., et al. (2017). SoilGrids250m: Global gridded soil information based on machine learning. \emph{PLOS ONE}, 12(2), e0169748. \doi{10.1371/journal.pone.0169748}
#' }
#'
#' **Soil temperature:**
#' \itemize{
#'   \item Lembrechts, J.J., et al. (2021). Mismatches between soil and air temperature. \emph{Global Change Biology}. \doi{10.1111/gcb.16060}
#' }
#'
#' **NDVI:**
#' \itemize{
#'   \item Copernicus Global Land Service: NDVI Long Term Statistics v3 (1999-2019). \url{https://land.copernicus.eu/global/products/ndvi}
#' }
#'
#' **Landcover and fragmentation:**
#' \itemize{
#'   \item Buchhorn, M., et al. (2020). Copernicus Global Land Service: Land Cover 100m: collection 3: epoch 2019: Globe. Zenodo. \doi{10.5281/zenodo.3939050}
#' }
#'
#' **Topographic/geographic features:**
#' \itemize{
#'   \item CGIAR-CSI SRTM 90m Digital Elevation Database. \url{https://srtm.csi.cgiar.org/}
#' }
#' @family plantae
"plantae"

#' @title Response variable names for plantae dataset
#' @description Character vector containing the names of the 53 response variables in `plantae`,
#' covering richness metrics (9), rarity-weighted richness (6), mean rarity (6), and beta diversity
#' indices including raw turnover (16), Sorensen (8), and Simpson (8) dissimilarities.
#' Metrics are available for all plants, trees, and grasses at species, genus, and family levels.
#' @usage data(plantae_responses)
#' @format A character vector of length 53.
#' @family plantae
"plantae_responses"

#' @title Predictor variable names for plantae dataset
#' @description Character vector of 96 predictor variable names from `plantae`, covering
#' sampling bias (7), geographic/geometric (14), human impact (5), climate change (2),
#' landcover (3), fragmentation (19), atmospheric (13), precipitation (8), temperature (11),
#' soil properties (6), soil temperature (4), and NDVI (4).
#' @usage data(plantae_predictors)
#' @format A character vector of length 96.
#' @family plantae
"plantae_predictors"
