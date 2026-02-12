#' European Quercus (Oak) Species Distribution with Environmental Predictors
#'
#' @description
#'
#' `sf` dataframe with `POINT` geometry containing 6,728 records of eight European Quercus (oak) species and absence points, 1 response variable (see [quercus_response]), and 31 numeric predictors (see [quercus_predictors]). Use [quercus_extra()] to download the associated environmental raster.
#'
#' **Response**
#'
#' The response variable `species` is a character column with 9 levels:
#' \itemize{
#'   \item `"absence"`: Background absence points.
#'   \item `"Quercus robur"`: *Quercus robur* L. (English oak).
#'   \item `"Quercus petraea"`: *Quercus petraea* (Matt.) Liebl. (Sessile oak).
#'   \item `"Quercus ilex"`: *Quercus ilex* L. (Holm oak).
#'   \item `"Quercus cerris"`: *Quercus cerris* L. (Turkey oak).
#'   \item `"Quercus faginea"`: *Quercus faginea* Lam. (Portuguese oak).
#'   \item `"Quercus pubescens"`: *Quercus pubescens* Willd. (Downy oak).
#'   \item `"Quercus pyrenaica"`: *Quercus pyrenaica* Willd. (Pyrenean oak).
#'   \item `"Quercus suber"`: *Quercus suber* L. (Cork oak).
#' }
#'
#' **Predictors**
#'
#' \itemize{
#'   \item `bio1`, `bio2`, ..., `bio19`: WorldClim bioclimatic variables (17 variables, excluding bio8 and bio9).
#'   \item `ndvi_average`, `ndvi_maximum`, `ndvi_minimum`, `ndvi_range`: MODIS NDVI statistics.
#'   \item `sun_rad_average`, `sun_rad_maximum`, `sun_rad_minimum`, `sun_rad_range`: WorldClim solar radiation statistics.
#'   \item `landcover_veg_bare`, `landcover_veg_herb`, `landcover_veg_tree`: MODIS Vegetation Continuous Fields (MOD44B) land cover percentages.
#'   \item `topographic_diversity`: Number of unique combinations of elevation, slope, and aspect classes within a neighborhood.
#'   \item `topo_slope`: Topographic slope in degrees.
#'   \item `human_footprint`: Human footprint index.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' **Data sources**
#' \itemize{
#'   \item **Species occurrences**: GBIF.org. Global Biodiversity Information Facility. \url{https://www.gbif.org/}.
#'   \item **Bioclimatic variables and solar radiation**: Fick, S.E. and Hijmans, R.J., 2017. WorldClim 2: new 1-km spatial resolution climate surfaces for global land areas. International Journal of Climatology, 37(12), pp.4302-4315. \doi{10.1002/joc.5086}
#'   \item **Human footprint**: Venter, O., Sanderson, E.W., Magrach, A., Allan, J.R., Beher, J., Jones, K.R., Possingham, H.P., Laurance, W.F., Wood, P., Fekete, B.M., Levy, M.A. and Watson, J.E., 2016. Global terrestrial Human Footprint maps for 1993 and 2009. Scientific Data, 3, p.160067. \doi{10.1038/sdata.2016.67}
#'   \item **Land cover**: DiMiceli, C., Carroll, M., Sohlberg, R., Kim, D.H., Kelly, M., and Townshend, J.R.G. (2015). MOD44B MODIS/Terra Vegetation Continuous Fields Yearly L3 Global 250m SIN Grid V006. NASA EOSDIS LP DAAC. \doi{10.5067/MODIS/MOD44B.006}
#'   \item **NDVI**: Didan, K. (2015). MOD13A2 MODIS/Terra Vegetation Indices 16-Day L3 Global 1km SIN Grid V006. NASA EOSDIS LP DAAC. \doi{10.5067/MODIS/MOD13A2.006}
#'   \item **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E. Guevara, 2008. Hole-filled seamless SRTM data V4, International Centre for Tropical Agriculture (CIAT). \url{https://srtm.csi.cgiar.org}.
#' }
#'
#' @format sf data.frame
#'
#' @usage data(quercus)
#' @family example_data
#' @examples
#' data(quercus)
#' head(quercus)
"quercus"

#' Response Variable Name for `quercus`
#'
#' @description Character string with the name of the response variable in [quercus]: `"species"`.
#'
#' @usage data(quercus_response)
#' @format Character string of length 1.
#' @family example_data
"quercus_response"

#' Predictor Variable Names for `quercus`
#'
#' @description Character vector with the names of the 31 predictor variables in [quercus]: 17 bioclimatic, 4 NDVI, 4 solar radiation, 3 land cover, 2 topographic, and 1 human footprint variable.
#'
#' @usage data(quercus_predictors)
#' @format Character vector of length 31.
#' @family example_data
"quercus_predictors"

#' Download Environmental Raster for quercus
#'
#' @description
#' Downloads and reads the environmental raster associated with the [quercus]
#' dataset from the
#' [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#' Requires the \pkg{terra} package.
#'
#' @autoglobal
#' @param dir (optional, character) Directory to save the file. Defaults to
#'   the current working directory.
#' @param quiet (optional, logical) If `TRUE` (default), suppresses
#'   download messages.
#' @return SpatRaster object.
#' @family example_data
#' @examples
#' \dontrun{
#' quercus_env <- quercus_extra()
#' quercus_env
#' }
#' @export
quercus_extra <- function(
  dir = ".",
  quiet = TRUE
) {
  if (!requireNamespace("terra", quietly = TRUE)) {
    stop(
      "spatialData::quercus_extra(): The package 'terra' is required to run quercus_extra().",
      call. = FALSE
    )
  }

  path <- file.path(dir, "quercus_env.tiff")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/quercus_env.tif"
    if (quiet == FALSE) {
      message(
        "spatialData::quercus_extra(): Downloading quercus_env.tif to '",
        dir,
        "'."
      )
    }
    tryCatch(
      utils::download.file(url, path, mode = "wb", quiet = TRUE),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::quercus_extra(): Download of \nURL: '",
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
