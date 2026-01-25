#' 30.000 Global NDVI Records and Environmental Predictors
#'
#' @description
#'
#' The response variable is a Vegetation Index encoded in different ways to help highlight the package capabilities:
#' \itemize{
#'  \item \code{vi_numeric}: continuous vegetation index values in the range 0-1.
#'  \item \code{vi_counts}: simulated integer counts created by multiplying \code{vi_numeric} by 1000 and coercing the result to integer.
#'  \item \code{vi_binomial}: simulated integer binomial variable created by transforming \code{vi_numeric} to zeros and ones.
#'  \item \code{vi_categorical}: character variable with the categories "very_low", "low", "medium", "high", and "very_high", with thresholds located at the quantiles of \code{vi_numeric}.
#'  \item \code{vi_factor}: \code{vi_categorical} converted to factor.
#' }
#'
#' The names of all predictors (continuous, integer, character, and factors) are in `vi_predictors`.
#'
#' @usage data(vi)
#'
#' @format Data frame with 30,000 rows and 65 columns.
#' @family example_data
"vi"

#' Vector of response names in `vi`
#'
#' @usage data(vi_responses)
#'
#' @format Character vector with response names.
#' @family example_data
"vi_responses"

#' Vector of all predictor names in `vi`
#'
#' @usage data(vi_predictors)
#'
#' @format Character vector of length 58.
#' @family example_data
"vi_predictors"

#' Vector of numeric predictor names in `vi`
#'
#' @usage data(vi_predictors_numeric)
#'
#' @format Character vector of length 47.
#' @family example_data
"vi_predictors_numeric"

#' Vector of categorical predictor names in `vi`
#'
#' @usage data(vi_predictors_categorical)
#'
#' @format Character vector of length 11.
#' @family example_data
"vi_predictors_categorical"

#' @title Neanderthal presence and pseudo-absence records with environmental predictors
#' @description Presence records of Neanderthal archaeological sites from Marine Isotope Stage 5e
#' in Europe and the Near East, combined with pseudo-absence points and bioclimatic/topographic predictors.
#' Data sourced from Benito et al. (2017) <doi:10.1111/jbi.12845>.
#' @usage data(neanderthal)
#' @format An sf data frame with 245 rows and 27 columns:
#' \itemize{
#'   \item `presence`: Binary response variable (1 = presence, 0 = pseudo-absence).
#'   \item `bio1`: Annual mean temperature.
#'   \item `bio2`: Mean diurnal range.
#'   \item `bio3`: Isothermality.
#'   \item `bio4`: Temperature seasonality.
#'   \item `bio5`: Max temperature of warmest month.
#'   \item `bio6`: Min temperature of coldest month.
#'   \item `bio7`: Temperature annual range.
#'   \item `bio8`: Mean temperature of wettest quarter.
#'   \item `bio9`: Mean temperature of driest quarter.
#'   \item `bio10`: Mean temperature of warmest quarter.
#'   \item `bio11`: Mean temperature of coldest quarter.
#'   \item `bio12`: Annual precipitation.
#'   \item `bio13`: Precipitation of wettest month.
#'   \item `bio14`: Precipitation of driest month.
#'   \item `bio15`: Precipitation seasonality.
#'   \item `bio16`: Precipitation of wettest quarter.
#'   \item `bio17`: Precipitation of driest quarter.
#'   \item `bio18`: Precipitation of warmest quarter.
#'   \item `bio19`: Precipitation of coldest quarter.
#'   \item `topo_aspect`: Terrain aspect.
#'   \item `topo_diversity_local`: Local topographic diversity.
#'   \item `topo_diversity`: Regional topographic diversity.
#'   \item `topo_elev`: Elevation.
#'   \item `topo_slope`: Terrain slope.
#'   \item `topo_wetness`: Topographic wetness index.
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#' @source Benito, B. M., et al. (2017). The ecological niche and distribution of Neanderthals during the Last Interglacial. Journal of Biogeography, 44(1), 51-61. <doi:10.1111/jbi.12845>
#' @family data
"neanderthal"

#' @title Response variable name for Neanderthal distribution examples
#' @description Character string containing the name of the response variable in `neanderthal`: "presence".
#' @usage data(neanderthal_response)
#' @format A character string of length 1.
#' @family data
"neanderthal_response"

#' @title Predictor variable names for Neanderthal distribution examples
#' @description Character vector of predictor variable names from `neanderthal` (19 bioclimatic and 6 topographic variables).
#' @usage data(neanderthal_predictors)
#' @format A character vector of length 25.
#' @family data
"neanderthal_predictors"

#' @title European Quercus (oak) species presence/absence with environmental predictors
#' @description Presence and absence records of eight Quercus (oak) species across Europe,
#' combined with 31 environmental predictor variables including bioclimatic, topographic,
#' vegetation, and human impact metrics.
#' @usage data(quercus)
#' @format An sf data frame with 6,946 rows and 33 columns:
#' \itemize{
#'   \item `species`: Species name or "ausencia" for absence points (response variable).
#'   \item `bio1`: Annual mean temperature (BioClim).
#'   \item `bio2`: Mean diurnal range (BioClim).
#'   \item `bio3`: Isothermality (BioClim).
#'   \item `bio4`: Temperature seasonality (BioClim).
#'   \item `bio5`: Max temperature of warmest month (BioClim).
#'   \item `bio6`: Min temperature of coldest month (BioClim).
#'   \item `bio7`: Temperature annual range (BioClim).
#'   \item `bio10`: Mean temperature of warmest quarter (BioClim).
#'   \item `bio11`: Mean temperature of coldest quarter (BioClim).
#'   \item `bio12`: Annual precipitation (BioClim).
#'   \item `bio13`: Precipitation of wettest month (BioClim).
#'   \item `bio14`: Precipitation of driest month (BioClim).
#'   \item `bio15`: Precipitation seasonality (BioClim).
#'   \item `bio16`: Precipitation of wettest quarter (BioClim).
#'   \item `bio17`: Precipitation of driest quarter (BioClim).
#'   \item `bio18`: Precipitation of warmest quarter (BioClim).
#'   \item `bio19`: Precipitation of coldest quarter (BioClim).
#'   \item `topographic_diversity`: Topographic diversity index.
#'   \item `human_footprint`: Human footprint index.
#'   \item `landcover_veg_bare`: Bare ground vegetation cover percentage.
#'   \item `landcover_veg_herb`: Herbaceous vegetation cover percentage.
#'   \item `landcover_veg_tree`: Tree vegetation cover percentage.
#'   \item `ndvi_average`: Average NDVI (Normalized Difference Vegetation Index).
#'   \item `ndvi_maximum`: Maximum NDVI.
#'   \item `ndvi_minimum`: Minimum NDVI.
#'   \item `ndvi_range`: NDVI range.
#'   \item `sun_rad_average`: Average solar radiation.
#'   \item `sun_rad_maximum`: Maximum solar radiation.
#'   \item `sun_rad_minimum`: Minimum solar radiation.
#'   \item `sun_rad_range`: Solar radiation range.
#'   \item `topo_slope`: Terrain slope.
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#' @family data
"quercus"

#' @title Response variable name for Quercus distribution examples
#' @description Character string containing the name of the response variable in `quercus`: "species".
#' @usage data(quercus_response)
#' @format A character string of length 1.
#' @family data
"quercus_response"

#' @title Predictor variable names for Quercus distribution examples
#' @description Character vector of predictor variable names from `quercus` (17 bioclimatic, 2 topographic, 3 landcover, 4 NDVI, 4 solar radiation, and 1 human footprint variable).
#' @usage data(quercus_predictors)
#' @format A character vector of length 31.
#' @family data
"quercus_predictors"

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
