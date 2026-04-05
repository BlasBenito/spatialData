#' @title Neanderthal Presence and Pseudo-Absence Records with Environmental Predictors
#'
#' @description
#' `sf` data frame with `POINT` geometry containing 245 records of Neanderthal presence
#' and pseudo-absence sites from Marine Isotope Stage 5e (Last Interglacial) in Europe
#' and the Near East, 1 response variable (see [neanderthal_response]), and 25 predictors
#' (see [neanderthal_predictors]).
#' Use [neanderthal_extra()] to download the associated environmental raster.
#'
#' @usage data(neanderthal)
#' @format An sf data frame with 245 rows (presence and pseudo-absence sites) and 27 columns:
#'
#' **Response variable (1):**
#' \itemize{
#'   \item `presence`: Binary integer (1 = Neanderthal presence site, 0 = pseudo-absence site).
#' }
#'
#' **Predictor variables - Palaeoclimatic (19):**
#'
#' Bioclimatic variables derived from a Last Interglacial GCM simulation
#' (Otto-Bliesner et al. 2006), downscaled following the method of Hijmans et al. (2005).
#' These are analogous to the standard WorldClim bioclimatic variables but represent
#' Last Interglacial (MIS 5e) conditions rather than modern climate:
#' \itemize{
#'   \item `bio1`: Annual mean temperature (degrees C).
#'   \item `bio2`: Mean diurnal range (degrees C).
#'   \item `bio3`: Isothermality (bio2/bio7 * 100).
#'   \item `bio4`: Temperature seasonality (standard deviation * 100).
#'   \item `bio5`: Max temperature of warmest month (degrees C).
#'   \item `bio6`: Min temperature of coldest month (degrees C).
#'   \item `bio7`: Temperature annual range (degrees C).
#'   \item `bio8`: Mean temperature of wettest quarter (degrees C).
#'   \item `bio9`: Mean temperature of driest quarter (degrees C).
#'   \item `bio10`: Mean temperature of warmest quarter (degrees C).
#'   \item `bio11`: Mean temperature of coldest quarter (degrees C).
#'   \item `bio12`: Annual precipitation (mm).
#'   \item `bio13`: Precipitation of wettest month (mm).
#'   \item `bio14`: Precipitation of driest month (mm).
#'   \item `bio15`: Precipitation seasonality (coefficient of variation).
#'   \item `bio16`: Precipitation of wettest quarter (mm).
#'   \item `bio17`: Precipitation of driest quarter (mm).
#'   \item `bio18`: Precipitation of warmest quarter (mm).
#'   \item `bio19`: Precipitation of coldest quarter (mm).
#' }
#'
#' **Predictor variables - Topography (6):**
#' \itemize{
#'   \item `topo_aspect`: Aspect in degrees.
#'   \item `topo_diversity_local`: Local topographic diversity.
#'   \item `topo_diversity`: Regional topographic diversity.
#'   \item `topo_elev`: Elevation in meters.
#'   \item `topo_slope`: Slope in degrees.
#'   \item `topo_wetness`: Topographic wetness index.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' @source
#' **Presence data:**
#' \itemize{
#'   \item Benito, B.M., et al. (2017). The ecological niche and distribution of Neanderthals during the Last Interglacial. \emph{Journal of Biogeography}, 44, 51-61. \url{https://doi.org/10.1111/jbi.12845}
#' }
#'
#' **Palaeoclimatic variables (GCM simulation):**
#' \itemize{
#'   \item Otto-Bliesner, B.L., Marshall, S.J., Overpeck, J.T., Miller, G.H. & Hu, A. (2006). Simulating arctic climate warmth and icefield retreat in the last interglaciation. \emph{Science}, 311, 1751-1753.
#' }
#'
#' **Palaeoclimatic variables (interpolation):**
#' \itemize{
#'   \item Hijmans, R.J., Cameron, S.E., Parra, J.L., Jones, P.G. & Jarvis, A. (2005). Very high resolution interpolated climate surfaces for global land areas. \emph{International Journal of Climatology}, 25, 1965-1978.
#' }
#'
#' **Elevation and topography:**
#' \itemize{
#'   \item Jarvis, A., Guevara, E., Reuter, H. I., & Nelson, A. D. (2008). Hole-filled SRTM for the globe: version 4, data grid. Web publication/site, CGIAR Consortium for Spatial Information. \url{https://srtm.csi.cgiar.org}
#' }
#' @family neanderthal
"neanderthal"

#' @title Response variable name for neanderthal dataset
#' @description Character string with the name of the response variable in [neanderthal]: `"presence"`,
#' a binary integer (1 = presence, 0 = pseudo-absence).
#' @usage data(neanderthal_response)
#' @format A character string of length 1.
#' @family neanderthal
"neanderthal_response"

#' @title Predictor variable names for neanderthal dataset
#' @description Character vector of 25 predictor variable names from [neanderthal], covering
#' palaeoclimatic (19) and topography (6).
#' @usage data(neanderthal_predictors)
#' @format A character vector of length 25.
#' @family neanderthal
"neanderthal_predictors"

#' Download Environmental Raster for neanderthal
#'
#' @description
#' Downloads and reads the environmental raster associated with the [neanderthal] dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#' @autoglobal
#' @return SpatRaster object.
#' @family neanderthal
#' @export
neanderthal_extra <- function() {
  path <- file.path(getwd(), "neanderthal_env.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/neanderthal_env.tif"
    message(
      "spatialData::neanderthal_extra(): Downloading 'neanderthal_env.tif'."
    )
    tryCatch(
      utils::download.file(url, path, mode = "wb", quiet = TRUE),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::neanderthal_extra(): Download of \nURL: '",
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
