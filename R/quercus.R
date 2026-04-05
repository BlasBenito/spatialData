#' @title European Quercus (Oak) Species Distribution with Environmental Predictors
#'
#' @description
#' `sf` data frame with `POINT` geometry containing 6,728 records of eight European
#' Quercus (oak) species and absence points, 1 response variable (see [quercus_response]),
#' and 31 numeric predictors (see [quercus_predictors]).
#' Use [quercus_extra()] to download the associated environmental raster.
#'
#' @usage data(quercus)
#' @format An sf data frame with 6728 rows (species occurrences and absences) and 33 columns:
#'
#' **Response variable (1):**
#' \itemize{
#'   \item `species`: Character column with 9 levels:
#'     `"absence"` (background absence points),
#'     `"Quercus robur"` (English oak),
#'     `"Quercus petraea"` (Sessile oak),
#'     `"Quercus ilex"` (Holm oak),
#'     `"Quercus cerris"` (Turkey oak),
#'     `"Quercus faginea"` (Portuguese oak),
#'     `"Quercus pubescens"` (Downy oak),
#'     `"Quercus pyrenaica"` (Pyrenean oak),
#'     `"Quercus suber"` (Cork oak).
#' }
#'
#' **Predictor variables - Bioclimatic (17):**
#'
#' WorldClim v2 bioclimatic variables (excludes bio8 and bio9):
#' \itemize{
#'   \item `bio1`: Annual mean temperature (degrees C).
#'   \item `bio2`: Mean diurnal range (degrees C).
#'   \item `bio3`: Isothermality (bio2/bio7 * 100).
#'   \item `bio4`: Temperature seasonality (standard deviation * 100).
#'   \item `bio5`: Max temperature of warmest month (degrees C).
#'   \item `bio6`: Min temperature of coldest month (degrees C).
#'   \item `bio7`: Temperature annual range (degrees C).
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
#' **Predictor variables - NDVI (4):**
#' \itemize{
#'   \item `ndvi_average`: Average NDVI.
#'   \item `ndvi_maximum`: Maximum NDVI.
#'   \item `ndvi_minimum`: Minimum NDVI.
#'   \item `ndvi_range`: NDVI range.
#' }
#'
#' **Predictor variables - Solar radiation (4):**
#' \itemize{
#'   \item `sun_rad_average`: Average solar radiation (kJ m-2 day-1).
#'   \item `sun_rad_maximum`: Maximum solar radiation (kJ m-2 day-1).
#'   \item `sun_rad_minimum`: Minimum solar radiation (kJ m-2 day-1).
#'   \item `sun_rad_range`: Solar radiation range (kJ m-2 day-1).
#' }
#'
#' **Predictor variables - Land cover (3):**
#' \itemize{
#'   \item `landcover_veg_bare`: Percentage of bare ground.
#'   \item `landcover_veg_herb`: Percentage of herbaceous vegetation.
#'   \item `landcover_veg_tree`: Percentage of tree cover.
#' }
#'
#' **Predictor variables - Topography (2):**
#' \itemize{
#'   \item `topographic_diversity`: Number of unique combinations of elevation, slope, and aspect classes within a neighborhood.
#'   \item `topo_slope`: Topographic slope in degrees.
#' }
#'
#' **Predictor variables - Human impact (1):**
#' \itemize{
#'   \item `human_footprint`: Human footprint index.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' @source
#' **Species occurrences:**
#' \itemize{
#'   \item GBIF.org. Global Biodiversity Information Facility. \url{https://www.gbif.org/}
#' }
#'
#' **Bioclimatic variables and solar radiation:**
#' \itemize{
#'   \item Fick, S.E. & Hijmans, R.J. (2017). WorldClim 2: new 1-km spatial resolution climate surfaces for global land areas. \emph{International Journal of Climatology}, 37(12), 4302-4315. \doi{10.1002/joc.5086}
#' }
#'
#' **NDVI:**
#' \itemize{
#'   \item Didan, K. (2015). MOD13A2 MODIS/Terra Vegetation Indices 16-Day L3 Global 1km SIN Grid V006. NASA EOSDIS LP DAAC. \doi{10.5067/MODIS/MOD13A2.006}
#' }
#'
#' **Land cover:**
#' \itemize{
#'   \item DiMiceli, C., et al. (2015). MOD44B MODIS/Terra Vegetation Continuous Fields Yearly L3 Global 250m SIN Grid V006. NASA EOSDIS LP DAAC. \doi{10.5067/MODIS/MOD44B.006}
#' }
#'
#' **Elevation and topography:**
#' \itemize{
#'   \item Jarvis, A., Reuter, H.I., Nelson, A., & Guevara, E. (2008). Hole-filled seamless SRTM data V4. International Centre for Tropical Agriculture (CIAT). \url{https://srtm.csi.cgiar.org}
#' }
#'
#' **Human footprint:**
#' \itemize{
#'   \item Venter, O., et al. (2016). Global terrestrial Human Footprint maps for 1993 and 2009. \emph{Scientific Data}, 3, 160067. \doi{10.1038/sdata.2016.67}
#' }
#' @family quercus
"quercus"

#' @title Response variable name for quercus dataset
#' @description Character string with the name of the response variable in [quercus]: `"species"`,
#' a character column with 9 levels (absence + 8 Quercus species).
#' @usage data(quercus_response)
#' @format A character string of length 1.
#' @family quercus
"quercus_response"

#' @title Predictor variable names for quercus dataset
#' @description Character vector of 31 predictor variable names from [quercus], covering
#' bioclimatic (17), NDVI (4), solar radiation (4), land cover (3), topography (2),
#' and human footprint (1).
#' @usage data(quercus_predictors)
#' @format A character vector of length 31.
#' @family quercus
"quercus_predictors"

#' Download Environmental Raster for quercus
#'
#' @description
#' Downloads and reads the environmental raster associated with the [quercus] dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository. Requires the \pkg{terra} package.
#'
#' @autoglobal
#' @return SpatRaster object.
#' @family quercus
#' @export
quercus_extra <- function() {
  path <- file.path(getwd(), "quercus_env.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/quercus_env.tif"
    message(
      "spatialData::quercus_extra(): Downloading file 'quercus_env.tif'."
    )
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
