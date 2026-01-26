#' @title Plant richness of global dryland ecoregions
#' @description Plant richness metrics (species, genuses, families, classes, phyla) obtained from
#' GBIF Plantae records for global dryland ecoregions. Ecoregion boundaries are derived from
#' [Ecoregions 2017](https://ecoregions2017.appspot.com/) filtered by aridity index from
#' the Global Aridity Index 2.0 dataset. Original polygon geometries have been converted to
#' square polygons based on ecoregion area to reduce file size while preserving spatial context.
#' @usage data(drylands)
#' @format An sf data frame with 290 rows (ecoregions) and 69 columns:
#' \itemize{
#'   \item `ecoregion`: Unique ecoregion name.
#'   \item `biome`: Biome classification (14 categories).
#'   \item `realm`: Biogeographic realm (7 categories).
#'   \item `species`: Number of plant species (response variable).
#'   \item `genuses`: Number of plant genuses (response variable).
#'   \item `families`: Number of plant families (response variable).
#'   \item `classes`: Number of plant classes (response variable).
#'   \item `phyla`: Number of plant phyla (response variable).
#'   \item `soil_temperature_max`: Maximum soil temperature.
#'   \item `soil_temperature_mean`: Mean soil temperature.
#'   \item `soil_temperature_min`: Minimum soil temperature.
#'   \item `soil_temperature_range`: Soil temperature range.
#'   \item `soil_clay`: Soil clay content.
#'   \item `soil_nitrogen`: Soil nitrogen content.
#'   \item `soil_organic_carbon`: Soil organic carbon content.
#'   \item `soil_ph`: Soil pH.
#'   \item `soil_sand`: Soil sand content.
#'   \item `soil_silt`: Soil silt content.
#'   \item `soil_water_max`: Maximum soil water content.
#'   \item `soil_water_mean`: Mean soil water content.
#'   \item `soil_water_min`: Minimum soil water content.
#'   \item `soil_water_range`: Soil water content range.
#'   \item `elevation`: Mean elevation.
#'   \item `topography_aspect`: Terrain aspect.
#'   \item `topography_diversity`: Topographic diversity index.
#'   \item `topography_position`: Topographic position index.
#'   \item `topography_roughness`: Terrain roughness.
#'   \item `topography_slope`: Terrain slope.
#'   \item `topography_wetness`: Topographic wetness index.
#'   \item `distance_to_ocean`: Distance to nearest ocean.
#'   \item `ndvi_max`: Maximum NDVI.
#'   \item `ndvi_mean`: Mean NDVI.
#'   \item `ndvi_min`: Minimum NDVI.
#'   \item `ndvi_range`: NDVI range.
#'   \item `air_humidity_max`: Maximum air humidity.
#'   \item `air_humidity_mean`: Mean air humidity.
#'   \item `air_humidity_min`: Minimum air humidity.
#'   \item `air_humidity_range`: Air humidity range.
#'   \item `cloud_cover_max`: Maximum cloud cover.
#'   \item `cloud_cover_mean`: Mean cloud cover.
#'   \item `cloud_cover_min`: Minimum cloud cover.
#'   \item `cloud_cover_range`: Cloud cover range.
#'   \item `aridity_mean`: Mean aridity index.
#'   \item `evapotranspiration_max`: Maximum evapotranspiration.
#'   \item `evapotranspiration_mean`: Mean evapotranspiration.
#'   \item `evapotranspiration_min`: Minimum evapotranspiration.
#'   \item `evapotranspiration_range`: Evapotranspiration range.
#'   \item `precipitation_seasonality`: Precipitation seasonality.
#'   \item `precipitation_sum`: Total annual precipitation.
#'   \item `precipitation_coldest_quarter_sum`: Precipitation of coldest quarter.
#'   \item `precipitation_driest_month_sum`: Precipitation of driest month.
#'   \item `precipitation_driest_quarter_sum`: Precipitation of driest quarter.
#'   \item `precipitation_warmest_quarter_sum`: Precipitation of warmest quarter.
#'   \item `precipitation_wettest_month_sum`: Precipitation of wettest month.
#'   \item `precipitation_wettest_quarter_sum`: Precipitation of wettest quarter.
#'   \item `temperature_isothermality`: Temperature isothermality.
#'   \item `temperature_mean_daily_range`: Mean daily temperature range.
#'   \item `temperature_mean`: Mean temperature.
#'   \item `temperature_range`: Annual temperature range.
#'   \item `temperature_seasonality`: Temperature seasonality.
#'   \item `temperature_coldest_month_minimum`: Minimum temperature of coldest month.
#'   \item `temperature_coldest_quarter_mean`: Mean temperature of coldest quarter.
#'   \item `temperature_driest_quarter_mean`: Mean temperature of driest quarter.
#'   \item `temperature_warmest_month_maximum`: Maximum temperature of warmest month.
#'   \item `temperature_warmest_quarter_mean`: Mean temperature of warmest quarter.
#'   \item `temperature_wettest_quarter_mean`: Mean temperature of wettest quarter.
#'   \item `ecoregion_perimeter_km`: Ecoregion perimeter in kilometers.
#'   \item `ecoregion_area_km2`: Ecoregion area in square kilometers.
#'   \item `geometry`: Polygon geometry (WGS84, EPSG:4326).
#' }
#' @source
#' \itemize{
#'   \item GBIF Plantae Dataset (September 15, 2020). \doi{10.15468/dl.xh5y5g}
#'   \item Dinerstein, E., et al. (2017). An Ecoregion-Based Approach to Protecting Half the Terrestrial Realm. \emph{BioScience}, 67(6), 534-545. \doi{10.1093/biosci/bix014}
#'   \item Trabucco, A., & Zomer, R. (2019). Global Aridity Index and Potential Evapotranspiration (ET0) Climate Database v2. \doi{10.6084/m9.figshare.7504448.v3}
#'   \item Associated with: Maestre, F. T., et al. (2021). Biogeography of Global Drylands. \emph{New Phytologist}, 231(2), 540-558. \doi{10.1111/nph.17395}
#' }
#' @family data
"drylands"

#' @title Response variable names for drylands examples
#' @description Character vector containing the names of the five response variables in `drylands`:
#' species, genuses, families, classes, and phyla counts per ecoregion.
#' @usage data(drylands_responses)
#' @format A character vector of length 5.
#' @family data
"drylands_responses"

#' @title Predictor variable names for drylands examples
#' @description Character vector of 60 predictor variable names from `drylands`, covering
#' soil properties (10), soil water (4), topography (7), geography (1), vegetation (4),
#' atmosphere (8), climate/aridity (24), and ecoregion morphology (2).
#' @usage data(drylands_predictors)
#' @format A character vector of length 60.
#' @family data
"drylands_predictors"
