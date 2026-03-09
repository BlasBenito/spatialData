# Subset plantae to Eastern Hemisphere Ecoregions

Returns a subset of the
[plantae](https://blasbenito.github.io/spatialData/reference/plantae.md)
dataset filtered to non-American ecoregions
(`ecoregion_continent != "Americas"`) with `richness_species` (overall
plant species richness) as the only response variable. All 84 predictor
variables and identifier columns are retained.

## Usage

``` r
plantae_east()
```

## Value

sf data.frame with non-American ecoregions and columns: 5 identifiers,
`richness_species`, 84 predictors, and point geometry (WGS84).

## See also

Other plantae:
[`plantae`](https://blasbenito.github.io/spatialData/reference/plantae.md),
[`plantae_extra()`](https://blasbenito.github.io/spatialData/reference/plantae_extra.md),
[`plantae_predictors`](https://blasbenito.github.io/spatialData/reference/plantae_predictors.md),
[`plantae_responses`](https://blasbenito.github.io/spatialData/reference/plantae_responses.md),
[`plantae_west()`](https://blasbenito.github.io/spatialData/reference/plantae_west.md)

## Examples

``` r
east <- plantae_east()
nrow(east)
#> [1] 434
names(east)
#>  [1] "ecoregion_id"                  "ecoregion_name"               
#>  [3] "ecoregion_biome"               "ecoregion_realm"              
#>  [5] "ecoregion_continent"           "richness_species"             
#>  [7] "bias_log_records"              "geo_neighbors_count"          
#>  [9] "geo_neighbors_area_km2"        "geo_neighbors_aridity_mean"   
#> [11] "geo_area_km2"                  "geo_polygons_count"           
#> [13] "geo_perimeter_km"              "geo_shared_perimeter_km"      
#> [15] "geo_shared_perimeter_fraction" "geo_distance_to_ocean"        
#> [17] "geo_elevation_mean"            "human_population"             
#> [19] "human_population_density"      "human_footprint_mean"         
#> [21] "climate_velocity_lgm_mean"     "climate_hypervolume"          
#> [23] "landcover_bare_percent_mean"   "landcover_herbs_percent_mean" 
#> [25] "landcover_trees_percent_mean"  "fragmentation_ai"             
#> [27] "fragmentation_area_mn"         "fragmentation_ca"             
#> [29] "fragmentation_clumpy"          "fragmentation_cohesion"       
#> [31] "fragmentation_contig_mn"       "fragmentation_core_mn"        
#> [33] "fragmentation_cpland"          "fragmentation_dcore_mn"       
#> [35] "fragmentation_division"        "fragmentation_ed"             
#> [37] "fragmentation_lsi"             "fragmentation_mesh"           
#> [39] "fragmentation_ndca"            "fragmentation_nlsi"           
#> [41] "fragmentation_np"              "fragmentation_shape_mn"       
#> [43] "fragmentation_tca"             "fragmentation_te"             
#> [45] "air_humidity_max"              "air_humidity_mean"            
#> [47] "air_humidity_min"              "air_humidity_range"           
#> [49] "aridity_mean"                  "cloud_cover_max"              
#> [51] "cloud_cover_mean"              "cloud_cover_min"              
#> [53] "cloud_cover_range"             "evapotranspiration_max"       
#> [55] "evapotranspiration_mean"       "evapotranspiration_min"       
#> [57] "evapotranspiration_range"      "precipitation_seasonality"    
#> [59] "precipitation_total"           "precipitation_coldest_quarter"
#> [61] "precipitation_driest_month"    "precipitation_driest_quarter" 
#> [63] "precipitation_warmest_quarter" "precipitation_wettest_month"  
#> [65] "precipitation_wettest_quarter" "temperature_isothermality"    
#> [67] "temperature_mean_daily_range"  "temperature_mean"             
#> [69] "temperature_range"             "temperature_seasonality"      
#> [71] "temperature_coldest_month"     "temperature_coldest_quarter"  
#> [73] "temperature_driest_quarter"    "temperature_warmest_month"    
#> [75] "temperature_warmest_quarter"   "temperature_wettest_quarter"  
#> [77] "soil_clay"                     "soil_nitrogen"                
#> [79] "soil_organic_carbon"           "soil_ph"                      
#> [81] "soil_sand"                     "soil_silt"                    
#> [83] "soil_temperature_max"          "soil_temperature_mean"        
#> [85] "soil_temperature_min"          "soil_temperature_range"       
#> [87] "ndvi_max"                      "ndvi_mean"                    
#> [89] "ndvi_min"                      "ndvi_range"                   
```
