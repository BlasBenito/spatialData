#' 30.000 Global NDVI Records and Environmental Predictors
#'
#' @description
#'
#' The response variable is a Vegetation Index encoded in different ways to help highlight the package capabilities:
#' \itemize{
#'  \item \code{vi_numeric}: continuous vegetation index values in the range 0-1.
#'  \item \code{vi_counts}: simulated integer counts created by multiplying \code{vi_numeric} by 1000 and coercing the result to integer.
#'  \item \code{vi_binomial}: simulated integer binomial variable created by transforming \code{vi_numeric} to zeros and ones.
#'  \item \code{vi_categorical}: character variable with the categories "very_low", "low", "medium", "high", and "very_high", with thresholds located at the quantiles of \code{vi_numeric}.
#'  \item \code{vi_factor}: \code{vi_categorical} converted to factor.
#' }
#'
#' The names of all predictors (continuous, integer, character, and factors) are in `vi_predictors`.
#'
#' @usage data(vi)
#'
#' @format Data frame with 30,000 rows and 65 columns:
#'
#' **Response variables (5):**
#' \itemize{
#'   \item `vi_numeric`: Continuous vegetation index values (0-1).
#'   \item `vi_counts`: Simulated counts (`vi_numeric` × 1000, integer).
#'   \item `vi_binomial`: Simulated binary (0/1) from `vi_numeric`.
#'   \item `vi_categorical`: Categories: "very_low", "low", "medium", "high", "very_high".
#'   \item `vi_factor`: Factor version of `vi_categorical`.
#' }
#'
#' **Categorical predictors - Koppen climate (3):**
#' \itemize{
#'   \item `koppen_zone`: #TODO
#'   \item `koppen_group`: #TODO
#'   \item `koppen_description`: #TODO
#' }
#'
#' **Categorical predictors - Soil (1):**
#' \itemize{
#'   \item `soil_type`: #TODO
#' }
#'
#' **Categorical predictors - Biogeography (3):**
#' \itemize{
#'   \item `biogeo_ecoregion`: #TODO
#'   \item `biogeo_biome`: #TODO
#'   \item `biogeo_realm`: #TODO
#' }
#'
#' **Categorical predictors - Location (4):**
#' \itemize{
#'   \item `country_name`: #TODO
#'   \item `continent`: #TODO
#'   \item `region`: #TODO
#'   \item `subregion`: #TODO
#' }
#'
#' **Predictor variables - Topography (3):**
#' \itemize{
#'   \item `topo_slope`: #TODO
#'   \item `topo_diversity`: #TODO
#'   \item `topo_elevation`: #TODO
#' }
#'
#' **Predictor variables - Soil water index (4):**
#' \itemize{
#'   \item `swi_mean`: #TODO
#'   \item `swi_max`: #TODO
#'   \item `swi_min`: #TODO
#'   \item `swi_range`: #TODO
#' }
#'
#' **Predictor variables - Solar radiation (4):**
#' \itemize{
#'   \item `solar_rad_mean`: #TODO
#'   \item `solar_rad_max`: #TODO
#'   \item `solar_rad_min`: #TODO
#'   \item `solar_rad_range`: #TODO
#' }
#'
#' **Predictor variables - Growing season (4):**
#' \itemize{
#'   \item `growing_season_length`: #TODO
#'   \item `growing_season_temperature`: #TODO
#'   \item `growing_season_rainfall`: #TODO
#'   \item `growing_degree_days`: #TODO
#' }
#'
#' **Predictor variables - Temperature (5):**
#' \itemize{
#'   \item `temperature_mean`: Mean annual temperature.
#'   \item `temperature_max`: #TODO
#'   \item `temperature_min`: #TODO
#'   \item `temperature_range`: Annual temperature range.
#'   \item `temperature_seasonality`: Temperature seasonality.
#' }
#'
#' **Predictor variables - Rainfall (4):**
#' \itemize{
#'   \item `rainfall_mean`: #TODO
#'   \item `rainfall_max`: #TODO
#'   \item `rainfall_min`: #TODO
#'   \item `rainfall_range`: #TODO
#' }
#'
#' **Predictor variables - Evapotranspiration (4):**
#' \itemize{
#'   \item `evapotranspiration_mean`: Mean evapotranspiration.
#'   \item `evapotranspiration_max`: Maximum evapotranspiration.
#'   \item `evapotranspiration_min`: Minimum evapotranspiration.
#'   \item `evapotranspiration_range`: Evapotranspiration range.
#' }
#'
#' **Predictor variables - Cloud cover (4):**
#' \itemize{
#'   \item `cloud_cover_mean`: Mean cloud cover.
#'   \item `cloud_cover_max`: Maximum cloud cover.
#'   \item `cloud_cover_min`: Minimum cloud cover.
#'   \item `cloud_cover_range`: Cloud cover range.
#' }
#'
#' **Predictor variables - Aridity and humidity (5):**
#' \itemize{
#'   \item `aridity_index`: Mean aridity index.
#'   \item `humidity_mean`: Mean air humidity.
#'   \item `humidity_max`: Maximum air humidity.
#'   \item `humidity_min`: Minimum air humidity.
#'   \item `humidity_range`: Air humidity range.
#' }
#'
#' **Predictor variables - Soil properties (6):**
#' \itemize{
#'   \item `soil_clay`: Soil clay content.
#'   \item `soil_sand`: Soil sand content.
#'   \item `soil_silt`: Soil silt content.
#'   \item `soil_ph`: Soil pH.
#'   \item `soil_soc`: Soil organic carbon content.
#'   \item `soil_nitrogen`: Soil nitrogen content.
#' }
#'
#' **Predictor variables - Soil temperature (4):**
#' \itemize{
#'   \item `soil_temperature_mean`: Mean soil temperature.
#'   \item `soil_temperature_max`: Maximum soil temperature.
#'   \item `soil_temperature_min`: Minimum soil temperature.
#'   \item `soil_temperature_range`: Soil temperature range.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' @family example_data
"vi"

#' Vector of response names in `vi`
#'
#' @usage data(vi_responses)
#'
#' @format Character vector with response names.
#' @family example_data
"vi_responses"

#' Vector of all predictor names in `vi`
#'
#' @usage data(vi_predictors)
#'
#' @format Character vector of length 58.
#' @family example_data
"vi_predictors"
