#' Neanderthal Presence and Pseudo-Absence Records with Environmental Predictors
#'
#' @description
#'
#' `sf` dataframe with `POINT` geometry containing 245 records of Neanderthal presence and pseudo-absence sites from Marine Isotope Stage 5e (Last Interglacial) in Europe and the Near East, 1 response variable (see [neanderthal_response]), and 25 predictors (see [neanderthal_predictors]). Use [neanderthal_extra()] to download the associated environmental raster.
#'
#' **Response**
#'
#' The response variable `presence` is a binary integer:
#' \itemize{
#'   \item `1`: Neanderthal presence site.
#'   \item `0`: Pseudo-absence site.
#' }
#'
#' **Predictors**
#'
#' \itemize{
#'   \item `bio1`, `bio2`, ..., `bio19`: Palaeoclimatic variables from a Last Interglacial GCM simulation (19 variables).
#'   \item `topo_aspect`, `topo_diversity_local`, `topo_diversity`, `topo_elev`, `topo_slope`, `topo_wetness`: SRTM-derived topographic variables.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' **Data sources**
#' \itemize{
#'   \item **Presence data**: Benito, B.M., Svenning, J.-C., Kellberg-Nielsen, T., Riede, F., Gil-Romera, G., Mailund, T., Kjaergaard, P.C. and Sandel, B.S. (2017), The ecological niche and distribution of Neanderthals during the Last Interglacial. J. Biogeogr., 44: 51-61. \doi{10.1111/jbi.12845}
#'   \item **Palaeoclimatic variables (GCM simulation)**: Otto-Bliesner, B.L., Marshall, S.J., Overpeck, J.T., Miller, G.H. & Hu, A. (2006) Simulating arctic climate warmth and icefield retreat in the last interglaciation. Science, 311, 1751-1753.
#'   \item **Palaeoclimatic variables (interpolation)**: Hijmans, R.J., Cameron, S.E., Parra, J.L., Jones, P.G. & Jarvis, A. (2005) Very high resolution interpolated climate surfaces for global land areas. International Journal of Climatology, 25, 1965-1978.
#'   \item **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E. Guevara, 2008. Hole-filled seamless SRTM data V4, International Centre for Tropical Agriculture (CIAT). \url{https://srtm.csi.cgiar.org}.
#' }
#'
#' @format sf data.frame
#'
#' @usage data(neanderthal)
#' @family example_data
#' @examples
#' data(neanderthal)
#' head(neanderthal)
"neanderthal"

#' Response Variable Name for `neanderthal`
#'
#' @description Character string with the name of the response variable in [neanderthal]: `"presence"`.
#'
#' @usage data(neanderthal_response)
#' @format Character string of length 1.
#' @family example_data
"neanderthal_response"

#' Predictor Variable Names for `neanderthal`
#'
#' @description Character vector with the names of the 25 predictor variables in [neanderthal]: 19 bioclimatic and 6 topographic variables.
#'
#' @usage data(neanderthal_predictors)
#' @format Character vector of length 25.
#' @family example_data
"neanderthal_predictors"

#' Download Environmental Raster for neanderthal
#'
#' @description
#' Downloads and reads the environmental raster associated with the [neanderthal]
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
#' neanderthal_env <- neanderthal_extra()
#' neanderthal_env
#' }
#' @export
neanderthal_extra <- function(
  dir = ".",
  quiet = TRUE
) {
  if (!requireNamespace("terra", quietly = TRUE)) {
    stop(
      "spatialData::neanderthal_extra(): The package 'terra' is required to run neanderthal_extra().",
      call. = FALSE
    )
  }

  path <- file.path(dir, "neanderthal_env.tif")

  if (!file.exists(path)) {
    url <- "https://github.com/BlasBenito/spatialDataExtra/releases/latest/download/neanderthal_env.tif"
    if (quiet == FALSE) {
      message(
        "spatialData::neanderthal_extra(): Downloading neanderthal_env.tif to '",
        dir,
        "'."
      )
    }
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
