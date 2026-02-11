#' Global NDVI Records and Environmental Predictors
#'
#' @description
#'
#' `sf` dataframe with `POINT` geometry records representing 9265 global locations, 5 response variables with different encodings (see [vi_responses]), and 58 numeric and categorical predictors (see [vi_predictors]).
#'
#' **Responses**
#'
#' The response variables represent different encodings of the average NDVI between 1999 and 2019 at 1km resolution:
#' \itemize{
#'  \item \code{vi_numeric}: continuous vegetation index values in the range 0-1.
#'  \item \code{vi_counts}: simulated integer counts created by multiplying \code{vi_numeric} by 1000 and coercing the result to integer.
#'  \item \code{vi_binomial}: simulated integer binomial variable created by transforming \code{vi_numeric} to zeros and ones using an arbitrary threshold (`vi_numeric > 0.5`).
#'  \item \code{vi_categorical}: character variable with the categories "very_low", "low", "medium", "high", and "very_high", with thresholds located at the quantiles of \code{vi_numeric}.
#'  \item \code{vi_factor}: \code{vi_categorical} converted to factor.
#' }
#'
#' **Predictors**
#'
#' \itemize{
#'   \item `koppen_zone` (character): Koppen zone codes from Beck et al. (2018) (see References)
#'   \item `koppen_group` (character): Koppen group names.
#'   \item `koppen_description` (character): Climate description.
#'   \item `soil_type` (character): Soil classification type.
#'   \item `biogeo_ecoregion` (character): Ecoregion name.
#'   \item `biogeo_biome` (character): Biome name.
#'   \item `biogeo_realm` (character): Ecological realm name.
#'   \item `country_name` (character): Country name.
#'   \item `continent` (character): Continent name.
#'   \item `region` (character): UN region name.
#'   \item `subregion` (character): UN sub-region name.
#'   \item `topo_slope`: Topographic slope in degrees.
#'   \item `topo_diversity`: Number of combinations of different elevations, slopes, and aspects in a radius of 5km around each  1km cell.
#'   \item `topo_elevation`: Elevation in meters
#'   \item `swi_...`: Annual soil water index stats.
#'   \item `solar_rad_...`: Annual radiation stats.
#'   \item `temperature_...`: Annual air temperature stats.
#'   \item `temperature_seasonality`: Coefficient of variation of monthly air temperatures.
#'   \item `rainfall_...`: Annual rainfall stats.
#'   \item `evapotranspiration_...`: Annual evapotranspiration stats.
#'   \item `cloud_cover_...`: Annual cloud cover stats.
#'   \item `growing_season_length`: Length of the growing season.
#'   \item `growing_season_temperature`: Average temperature of the growing season.
#'   \item `growing_season_rainfall`: Accumulated rainfall of the growing season.
#'   \item `growing_degree_days`: Heat sum of all days above the 0°C temperature accumulated over 1 year.
#'   \item `aridity_index`: Mean aridity index.
#'   \item `humidity_...`: Annual air humidity stats.
#'   \item `soil_clay`: Soil clay content.
#'   \item `soil_sand`: Soil sand content.
#'   \item `soil_silt`: Soil silt content.
#'   \item `soil_ph`: Soil pH.
#'   \item `soil_soc`: Soil organic carbon content.
#'   \item `soil_nitrogen`: Soil nitrogen content.
#'   \item `soil_temperature_...`: Annual land surface temperature stats.
#' }
#'
#' **Geometry:**
#' \itemize{
#'   \item `geometry`: Point geometry (WGS84, EPSG:4326).
#' }
#'
#' **Data sources**
#' \itemize{
#'   \item **Response variables (NDVI)**: Normalised Difference Vegetation Index (Long Term Statistics) 1999-2019 (raster 1 km), global, 10-daily – version 3 (\url{https://sdi.eea.europa.eu/catalogue/srv/api/records/290e81fb-4c84-42ad-ae12-f663312b0eda})
#'   \item **Koppen Climate**: Beck, H. E. et al., Present and future Köppen-Geiger climate classification maps at 1-km resolution. Sci. Data. 5:180214 \doi{10.1038/sdata.2018.214} (2018).
#'   \item **Soil Water Index**: Generated using European Union's Copernicus Land Monitoring Service information; \doi{10.2909/290e81fb-4c84-42ad-ae12-f663312b0eda}.
#'   \item **Climate**: Brun, P., Zimmermann, N. E., Hari, C., Pellissier, L., Karger, D. N. (2022). CHELSA-BIOCLIM+ A novel set of global climate-related predictors at kilometre-resolution. EnviDat. \doi{10.16904/envidat.332}.
#'   \item **Soil type and chemistry**: Hengl T, Mendes de Jesus J, Heuvelink GBM, Ruiperez Gonzalez M, Kilibarda M, Blagotić A, et al. (2017) SoilGrids250m: Global gridded soil information based on machine learning. PLoS ONE 12(2): e0169748. \doi{10.1371/journal.pone.0169748}
#'   \item **Soil Temperature**: Wan, Z., Hook, S., Hulley, G. (2015). MOD11A2 MODIS/Terra Land Surface Temperature/Emissivity 8-Day L3 Global 1km SIN Grid V006 [Data set]. NASA EOSDIS LP DAAC. \doi{10.5067/MODIS/MOD11A2.006} (Zenodo: \url{https://zenodo.org/records/1435938})
#'   \item **Ecoregions**: Eric Dinerstein, David Olson, Anup Joshi, Carly Vynne, Neil D. Burgess, Eric Wikramanayake, Nathan Hahn, Suzanne Palminteri, Prashant Hedao, Reed Noss, Matt Hansen, Harvey Locke, Erle C Ellis, Benjamin Jones, Charles Victor Barber, Randy Hayes, Cyril Kormos, Vance Martin, Eileen Crist, Wes Sechrest, Lori Price, Jonathan E. M. Baillie, Don Weeden, Kierán Suckling, Crystal Davis, Nigel Sizer, Rebecca Moore, David Thau, Tanya Birch, Peter Potapov, Svetlana Turubanova, Alexandra Tyukavina, Nadia de Souza, Lilian Pintea, José C. Brito, Othman A. Llewellyn, Anthony G. Miller, Annette Patzelt, Shahina A. Ghazanfar, Jonathan Timberlake, Heinz Klöser, Yara Shennan-Farpón, Roeland Kindt, Jens-Peter Barnekow Lillesø, Paulo van Breugel, Lars Graudal, Maianna Voge, Khalaf F. Al-Shammari, Muhammad Saleem, An Ecoregion-Based Approach to Protecting Half the Terrestrial Realm, BioScience, Volume 67, Issue 6, June 2017, Pages 534–545, \doi{10.1093/biosci/bix014}
#'   \item **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E. Guevara, 2008, Hole-filled seamless SRTM data V4, International Centre for Tropical Agriculture (CIAT), available from \url{https://srtm.csi.cgiar.org}.
#'   \item **Aridity**: Zomer, R.J., Xu, J. & Trabucco, A. Version 3 of the Global Aridity Index and Potential Evapotranspiration Database. Sci Data 9, 409 (2022). \doi{10.1038/s41597-022-01493-1}
#'   \item **Country, continent, region, and subregion**: Natural Earth. Free vector and raster map data. \url{https://www.naturalearthdata.com/}.
#' }
#'
#' @format sf data.frame
#'
#' @usage data(vi)
#' @family example_data
#' @examples
#' data(vi)
#' head(vi)
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
