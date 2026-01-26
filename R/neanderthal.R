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
