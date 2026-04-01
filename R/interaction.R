#' @title Species Interaction Dataset: Butterfly and Host Plant in Sierra Nevada (SE Spain)
#'
#' @description
#' Data frame with co-occurrence records for the butterfly \emph{Agriades zullichi} (`butterfly`) and its host plant \emph{Androsace vitaliana} (`host_plant`) in the Sierra Nevada mountain range (SE Spain), combined with random background points. Contains 3 response variables (see [interaction_responses]) and 10 numeric environmental predictors at 100 m resolution (see [interaction_predictors]).
#' The butterfly and host plant surveys were conducted independently by separate field teams; their presence records are spatially non-overlapping.
#' Use [interaction_extra()] to download the associated environmental raster.
#'
#' @usage data(interaction)
#' @format A data frame with presence and background rows and 13 columns:
#'
#' **Response variables (3):**
#' \itemize{
#'   \item `butterfly`: Integer with three possible values: 1 (presence of \emph{Agriades zullichi}), 0 (background), and NA (host plant observation site, where butterfly was not surveyed).
#'   \item `host_plant`: Integer with three possible values: 1 (presence of \emph{Androsace vitaliana}), 0 (background), and NA (butterfly observation site, where the plant was not surveyed).
#'   \item `class`: Factor with three levels: `"butterfly"`, `"host_plant"`, and `"background"`, indicating the observation type of each record.
#' }
#'
#' **Predictor variables - Remote sensing (3):**
#' \itemize{
#'   \item `landsat_ndvi`: Normalized Difference Vegetation Index derived from Landsat imagery.
#'   \item `landsat_pca_bands_123`: First principal component of Landsat bands 1, 2, and 3 (visible).
#'   \item `landsat_pca_bands_457`: First principal component of Landsat bands 4, 5, and 7 (infrared).
#' }
#'
#' **Predictor variables - Climate (5):**
#' \itemize{
#'   \item `rainfall_annual`: Mean annual rainfall (mm).
#'   \item `solar_radiation`: Mean annual solar radiation (MJ m\eqn{^{-2}} day\eqn{^{-1}}).
#'   \item `temperature_annual_mean`: Mean annual temperature (degrees C).
#'   \item `temperature_summer_max`: Maximum summer temperature (degrees C).
#'   \item `temperature_winter_min`: Minimum winter temperature (degrees C).
#' }
#'
#' **Predictor variables - Topography (2):**
#' \itemize{
#'   \item `topographic_complexity`: Index of terrain ruggedness and heterogeneity.
#'   \item `topographic_position`: Relative elevation of a cell compared to its surroundings.
#' }
#'
#' @source
#' **Species occurrences:**
#' \itemize{
#'   \item Butterfly (\emph{Agriades zullichi}) and host plant (\emph{Androsace vitaliana}) field records collected in the Sierra Nevada mountain range (SE Spain).
#'   \item Barea-Azcón, J.M., Benito, B.M., Olivares, F.J., Ruiz, H., Martín, J., García, A.L., & López, R. (2014). Distribution and conservation of the relict interaction between the butterfly \emph{Agriades zullichi} and its larval foodplant (\emph{Androsace vitaliana nevadensis}). \emph{Biodiversity and Conservation}, 23(4), 927–944. \doi{10.1007/s10531-014-0643-4}
#' }
#'
#' **Remote sensing:**
#' \itemize{
#'   \item Landsat imagery processed to derive NDVI and principal component scores for the Sierra Nevada region.
#' }
#'
#' **Climate variables:**
#' \itemize{
#'   \item Downscaled climate data for the Sierra Nevada mountain range. Council of Environment, Regional Government of Andalusia (Spain).
#' }
#'
#' **Topographic variables:**
#' \itemize{
#'   \item 100 m Digital Elevation Model derivatives. Council of Environment, Government of Andalusia (Spain).
#' }
#'
#' @family interaction
"interaction"

#' @title Response variable names for interaction dataset
#' @description Character vector of 3 response variable names from [interaction]:
#' `"butterfly"` and `"host_plant"` (integer with 1 = presence, 0 = background, NA = not surveyed at opposite-species sites), and
#' `"class"` (factor with levels `"butterfly"`, `"host_plant"`, and `"background"`).
#' @usage data(interaction_responses)
#' @format A character vector of length 3.
#' @family interaction
"interaction_responses"

#' @title Predictor variable names for interaction dataset
#' @description Character vector of 10 predictor variable names from [interaction],
#' covering remote sensing (3: Landsat NDVI and two PCA scores), climate (5: annual
#' rainfall, solar radiation, mean annual temperature, maximum summer temperature,
#' minimum winter temperature), and topography (2: topographic complexity and
#' topographic position).
#' @usage data(interaction_predictors)
#' @format A character vector of length 10.
#' @family interaction
"interaction_predictors"

#' Download Environmental Raster for interaction
#'
#' @description
#' Downloads and reads the environmental raster associated with the [interaction] dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository. Requires the \pkg{terra} package.
#'
#' @autoglobal
#' @return SpatRaster object.
#' @family interaction
#' @export
interaction_extra <- function() {
  path <- file.path(getwd(), "sierra_nevada_env.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/sierra_nevada_env.tif"
    message(
      "spatialData::interaction_extra(): Downloading file 'sierra_nevada_env.tif'."
    )
    tryCatch(
      utils::download.file(url, path, mode = "wb", quiet = TRUE),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::interaction_extra(): Download of \nURL: '",
          url,
          "' failed.",
          call. = FALSE
        )
      }
    )
  }

  out <- terra::rast(path)

  out
}
