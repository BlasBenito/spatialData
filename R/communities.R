#' @title Plant Communities of the Sierra Nevada (SE Spain)
#'
#' @description
#' `sf` data frame with `POINT` geometry containing 6747 plant community records from the Sierra Nevada mountain range (SE Spain), with 6 response variables (see [communities_responses]) and 9 numeric predictors (see [communities_predictors]).
#' Use [communities_extra_2010()], [communities_extra_2050()], and [communities_extra_2100()] to download the associated environmental rasters for the baseline (2010), 2050, and 2100 climate scenarios.
#'
#' @usage data(communities)
#' @format An sf data frame with 7,300 rows and 16 columns:
#'
#' **Response variables (6):**
#' \itemize{
#'   \item `community`: Factor column with 6 levels:
#'     `"none"`,
#'     `"Pyrenean oak forests"`,
#'     `"Juniper-broom shrublands"`,
#'     `"Pinus forests"`,
#'     `"Alpine pastures"`,
#'     `"Holm oak forests"`.
#'   \item `pyrenean_oak`: Binary integer presence-absence (1/0) for Pyrenean oak forests.
#'   \item `juniper_shrubland`: Binary integer presence-absence (1/0) for juniper-broom shrublands.
#'   \item `pinus_forest`: Binary integer presence-absence (1/0) for Pinus forests.
#'   \item `alpine_pastures`: Binary integer presence-absence (1/0) for alpine pastures.
#'   \item `holm_oak`: Binary integer presence-absence (1/0) for holm oak forests.
#' }
#'
#' **Predictor variables - Climate (6):**
#' \itemize{
#'   \item `max_temperature_summer`: Maximum summer temperature (degrees C).
#'   \item `max_temperature_winter`: Maximum winter temperature (degrees C).
#'   \item `min_temperature_summer`: Minimum summer temperature (degrees C).
#'   \item `min_temperature_winter`: Minimum winter temperature (degrees C).
#'   \item `rainfall_summer`: Summer rainfall (mm).
#'   \item `rainfall_winter`: Winter rainfall (mm).
#' }
#'
#' **Predictor variables - Topography (3):**
#' \itemize{
#'   \item `northness`: Northness index (cosine of aspect, -1 to 1).
#'   \item `slope`: Terrain slope (degrees).
#'   \item `topographic_wetness_index`: Topographic wetness index.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (ETRS89 / UTM zone 30N, EPSG:25830).
#' }
#'
#' @source
#' **Plant community occurrences:**
#' \itemize{
#'   \item Official vegetation map at 1:10,000 scale. Council of Environment, Regional Government of Andalusia (Spain).
#' }
#'
#' **Climate variables:**
#' \itemize{
#'   \item Downscaled climate simulations (ECHAM4/CGCM2, SRES A2/B2 scenarios) using the FIC Analogues Method (Brunet et al. 2007); calibration period 1990-2005. Council of Environment, Regional Government of Andalusia (Spain).
#' }
#'
#' **Topographic variables (northness, slope, TWI):**
#' \itemize{
#'   \item 10 m Digital Elevation Model. Council of Environment, Government of Andalusia (Spain).
#' }
#'
#' **Reference:**
#' \itemize{
#'   \item Benito, B., Lorite, J., & Penas, J. (2011). Simulating potential effects of climatic warming on altitudinal patterns of key species in Mediterranean-alpine ecosystems. \emph{Climatic Change}, 108, 471-483. \doi{10.1007/s10584-010-0015-3}
#' }
#' @family communities
"communities"

#' @title Response variable names for communities dataset
#' @description Character vector of 6 response variable names from [communities]:
#' `"community"` (multi-class character), plus 5 binary columns for individual
#' plant community types.
#' @usage data(communities_responses)
#' @format A character vector of length 6.
#' @family communities
"communities_responses"

#' @title Predictor variable names for communities dataset
#' @description Character vector of 9 predictor variable names from [communities],
#' covering climate (6: maximum and minimum summer/winter temperature, summer and
#' winter rainfall) and topography (3: northness, slope, topographic wetness index).
#' @usage data(communities_predictors)
#' @format A character vector of length 9.
#' @family communities
"communities_predictors"

#' Download Environmental Raster for communities - 2010
#'
#' @description
#' Downloads and reads the baseline (2010) environmental raster associated with the [communities] dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#'
#' @autoglobal
#' @return SpatRaster object.
#' @family communities
#' @export
communities_extra_2010 <- function() {
  path <- file.path(getwd(), "communities_2010.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/communities_2010.tif"
    message(
      "spatialData::communities_extra_2010(): Downloading file 'communities_2010.tif'."
    )
    tryCatch(
      utils::download.file(
        url,
        path,
        mode = "wb",
        quiet = TRUE
      ),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::communities_extra_2010(): Download of \nURL: '",
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

#' Download Environmental Raster for communities - 2050
#'
#' @description
#' Downloads and reads the 2050 climate scenario environmental raster associated with the [communities]
#' dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#'
#' @autoglobal
#' @return SpatRaster object.
#' @family communities
#' @export
communities_extra_2050 <- function() {
  path <- file.path(dir, "communities_2050.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/communities_2050.tif"
    message(
      "spatialData::communities_extra_2050(): Downloading file 'communities_2050.tif'."
    )
    tryCatch(
      utils::download.file(
        url,
        path,
        mode = "wb",
        quiet = TRUE
      ),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::communities_extra_2050(): Download of \nURL: '",
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

#' Download Environmental Raster for communities - 2100
#'
#' @description
#' Downloads and reads the 2100 climate scenario environmental raster associated with the [communities]
#' dataset from the [spatialDataExtra](https://github.com/BlasBenito/spatialDataExtra) repository.
#'
#' @autoglobal
#' @return SpatRaster object.
#' @family communities
#' @export
communities_extra_2100 <- function() {
  path <- file.path(getwd(), "communities_2100.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/communities_2100.tif"
    message(
      "spatialData::communities_extra_2100(): Downloading file 'communities_2100.tif'."
    )
    tryCatch(
      utils::download.file(
        url,
        path,
        mode = "wb",
        quiet = TRUE
      ),
      error = function(e) {
        unlink(path)
        stop(
          "spatialData::communities_extra_2100(): Download of \nURL: '",
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
