#' @title Plant richness of the American Ecoregions
#' @description Vascular plant richness obtained from GBIF for the American ecoregions as defined in [Ecoregions 2017](https://ecoregions2017.appspot.com/).
#' @usage data(plants)
#' @format A data frame with 227 rows and 22 columns:
#' \itemize{
#'   \item `ecoregion_id`: Ecoregion identifier.
#'   \item `x`: Longitude in degrees (WGS84).
#'   \item `y`: Latitude in degrees (WGS84).
#'   \item `richness_species_vascular`: Number of vascular plant species (response variable).
#'   \item `bias_area_km2`: Ecoregion area in square kilometers.
#'   \item `bias_species_per_record`: Species count divided by GBIF spatial records (sampling bias metric).
#'   \item `climate_aridity_index_average`: Average aridity index.
#'   \item `climate_hypervolume`: Climatic envelope volume computed with [hypervolume](https://cran.r-project.org/package=hypervolume).
#'   \item `climate_velocity_lgm_average`: Average climate velocity since the Last Glacial Maximum.
#'   \item `neighbors_count`: Number of immediate neighbors (connectivity metric).
#'   \item `neighbors_percent_shared_edge`: Percentage of shared edge with neighbors (connectivity metric).
#'   \item `human_population_density`: Human population density.
#'   \item `topography_elevation_average`: Average elevation.
#'   \item `landcover_herbs_percent_average`: Average herb cover from MODIS Vegetation Continuous Fields.
#'   \item `fragmentation_cohesion`: Cohesion index computed with [landscapemetrics](https://CRAN.R-project.org/package=landscapemetrics).
#'   \item `fragmentation_division`: Division index computed with [landscapemetrics](https://CRAN.R-project.org/package=landscapemetrics).
#'   \item `neighbors_area`: Total area of immediate neighbors.
#'   \item `human_population`: Total human population.
#'   \item `human_footprint_average`: Average human footprint index.
#'   \item `climate_bio1_average`: Average mean annual temperature.
#'   \item `climate_bio15_minimum`: Minimum precipitation seasonality.
#'
#' }
#' @family data
"plants"

#' @title Response variable name for plant richness examples
#'
#' @description Character string containing the name of the response variable in `plants`: "richness_species_vascular".
#' @usage data(plants_response)
#' @format A character string of length 1.
#' @family data
"plants_response"

#' @title Predictor variable names for plant richness examples
#' @description Character vector of predictor variable names from `plants` (columns 3 to 19).
#' @usage data(plants_predictors)
#' @format A character vector of length 17.
#' @family data
"plants_predictors"

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
#'   \item `diversidad_topo`: Topographic diversity index.
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
