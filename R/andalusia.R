#' @title Threatened Plant Species Presences and Background Points in Andalusia, Spain
#'
#' @description
#' `sf` data frame with `POINT` geometry containing presence records of threatened
#' and endemic plant species and background points from Andalusia, Spain. The dataframe
#' contains 2 response variables (see [andalusia_responses]), and 20 numeric predictors
#' (see [andalusia_predictors]). Use [andalusia_extra()] to download the associated
#' environmental raster.
#'
#' The dataset combines species occurrence records and randomly sampled background
#' points. Presences were spatially thinned at the raster cell level (400 m) to
#' remove redundancy. Background points were randomly sampled within the raster extent.
#' Species with fewer than 30 records after thinning were excluded. Environmental
#' predictors were extracted from a Landsat/DEM-derived raster at 400 m resolution
#' (EPSG:25830).
#'
#' @usage data(andalusia)
#' @format An sf data frame with 8666 rows (presences and background points) and 23 columns:
#'
#' **Response variables (2):**
#' \itemize{
#'   \item `species`: Character string (species name or `"background"`).
#'   \item `presence`: Binary integer (1 = confirmed species presence, 0 = background point).
#' }
#'
#' **Predictor variables - Landsat (7):**
#' \itemize{
#'   \item `landsat_band_1`: Landsat TM Band 1 — Blue (0.45–0.52 µm), surface reflectance.
#'   \item `landsat_band_2`: Landsat TM Band 2 — Green (0.52–0.60 µm), surface reflectance.
#'   \item `landsat_band_3`: Landsat TM Band 3 — Red (0.63–0.69 µm), surface reflectance.
#'   \item `landsat_band_4`: Landsat TM Band 4 — Near-infrared (0.76–0.90 µm), surface reflectance.
#'   \item `landsat_band_5`: Landsat TM Band 5 — Short-wave infrared 1 (1.55–1.75 µm), surface reflectance.
#'   \item `landsat_band_6`: Landsat TM Band 6 — Thermal infrared (10.4–12.5 µm), brightness temperature (K).
#'   \item `landsat_ndvi`: Normalized Difference Vegetation Index derived from Landsat bands 3 and 4.
#' }
#'
#' **Predictor variables - Rainfall (2):**
#' \itemize{
#'   \item `rainfall_annual`: Total annual rainfall (mm).
#'   \item `rainfall_summer`: Total summer rainfall (mm, June–September).
#' }
#'
#' **Predictor variables - Solar radiation (2):**
#' \itemize{
#'   \item `solar_radiation_summer`: Mean daily solar radiation in summer (kJ m-2 day-1).
#'   \item `solar_radiation_winter`: Mean daily solar radiation in winter (kJ m-2 day-1).
#' }
#'
#' **Predictor variables - Temperature (4):**
#' \itemize{
#'   \item `temperature_summer_max`: Mean maximum temperature in summer (degrees C).
#'   \item `temperature_summer_min`: Mean minimum temperature in summer (degrees C).
#'   \item `temperature_winter_max`: Mean maximum temperature in winter (degrees C).
#'   \item `temperature_winter_min`: Mean minimum temperature in winter (degrees C).
#' }
#'
#' **Predictor variables - Topography (5):**
#' \itemize{
#'   \item `topography_eastness`: Eastward component of aspect (sin of aspect in radians).
#'   \item `topography_elevation`: Elevation above sea level (m).
#'   \item `topography_northness`: Northward component of aspect (cos of aspect in radians).
#'   \item `topography_position`: Topographic position index (local elevation relative to neighbourhood mean).
#'   \item `topography_slope`: Slope gradient (degrees).
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (ETRS89 / UTM zone 30N, EPSG:25830).
#' }
#'
#' @source
#' **Landsat imagery:**
#' \itemize{
#'   \item U.S. Geological Survey. Landsat Thematic Mapper (TM) imagery, path/row tiles for Andalusia. \url{https://earthexplorer.usgs.gov}
#' }
#'
#' **Climate variables:**
#' \itemize{
#'   \item Ninyerola, M., Pons, X. & Roure, J.M. (2005). Atlas Climático Digital de la Península Ibérica: Metodología y aplicaciones en bioclimatología y geobotánica. Universidad Autónoma de Barcelona, Bellaterra.
#' }
#'
#' **Topography:**
#' \itemize{
#'   \item Instituto Geográfico Nacional. Modelo Digital del Terreno (MDT25). \url{https://www.ign.es}
#' }
#' @family andalusia
"andalusia"

#' @title Response variable names for andalusia dataset
#' @description Character vector of length 2 containing the names of the
#' response variables in [andalusia]: `"species"` (character, species name or
#' `"background"`) and `"presence"` (binary integer, 1 = confirmed species presence).
#' @usage data(andalusia_responses)
#' @format A character vector of length 2.
#' @family andalusia
"andalusia_responses"

#' @title Predictor variable names for andalusia dataset
#' @description Character vector of 20 predictor variable names from [andalusia],
#' covering Landsat reflectance (7), rainfall (2), solar radiation (2),
#' temperature (4), and topography (5).
#' @usage data(andalusia_predictors)
#' @format A character vector of length 20.
#' @family andalusia
"andalusia_predictors"

#' Download Environmental Raster for andalusia
#'
#' @description
#' Downloads and reads the 20-band environmental raster associated with the [andalusia] dataset
#' from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#' The raster covers Andalusia, Spain, at 400 m resolution (EPSG:25830) and includes
#' Landsat reflectance, climate, and topographic predictors (see [andalusia_predictors]).
#' Requires the \pkg{terra} package.
#' @autoglobal
#' @return SpatRaster object with 20 layers.
#' @family andalusia
#' @export
andalusia_extra <- function() {
  path <- file.path(getwd(), "andalusia_env.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/andalusia_env.tif"
    message(
      "spatialData::andalusia_extra(): Downloading 'andalusia_env.tif'."
    )
    tryCatch(
      utils::download.file(url, path, mode = "wb", quiet = TRUE),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::andalusia_extra(): Download of \nURL: '",
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
