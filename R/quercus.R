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
