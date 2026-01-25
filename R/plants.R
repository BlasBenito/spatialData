#' @title Plant richness of the American Ecoregions
#' @description Vascular plant richness obtained from GBIF for the American ecoregions as defined in [Ecoregions 2017](https://ecoregions2017.appspot.com/) (license [CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)), and ecological predictors either computed from the ecoregions geometry, or acquired from open sources.
#' @usage data(plants)
#' @format A data frame with 227 rows and 22 columns:
#' \itemize{
#'   \item `ecoregion_id`: Ecoregion identifier.
#'   \item `ecoregion_name`: Ecoregion name.
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
#' }
#' @references Dinerstein et al. 2017. An Ecoregion-Based Approach to Protecting Half the Terrestrial Realm, BioScience, Volume 67, Issue 6, June 2017, Pages 534–545, https://doi.org/10.1093/biosci/bix014
#' @family plants
"plants"

#' @title Response variable name for plant richness examples
#'
#' @description Character string containing the name of the response variable in `plants`: "richness_species_vascular".
#' @usage data(plants_response)
#' @format A character string of length 1.
#' @family plants
"plants_response"

#' @title Predictor variable names for plant richness examples
#' @description Character vector of predictor variable names from `plants` (columns 3 to 19).
#' @usage data(plants_predictors)
#' @format A character vector of length 17.
#' @family plants
"plants_predictors"
