# Global NDVI Records and Environmental Predictors

`sf` dataframe with `POINT` geometry records representing 9265 global
locations, 5 response variables with different encodings (see
[vi_responses](https://blasbenito.github.io/spatialData/reference/vi_responses.md)),
and 58 numeric and categorical predictors (see
[vi_predictors](https://blasbenito.github.io/spatialData/reference/vi_predictors.md)).
Use
[`vi_extra()`](https://blasbenito.github.io/spatialData/reference/vi_extra.md)
to download an extended version with 30,000 rows.

**Responses**

The response variables represent different encodings of the average NDVI
between 1999 and 2019 at 1km resolution:

- `vi_numeric`: continuous vegetation index values in the range 0-1.

- `vi_counts`: simulated integer counts created by multiplying
  `vi_numeric` by 1000 and coercing the result to integer.

- `vi_binomial`: simulated integer binomial variable created by
  transforming `vi_numeric` to zeros and ones using an arbitrary
  threshold (`vi_numeric > 0.5`).

- `vi_categorical`: character variable with the categories "very_low",
  "low", "medium", "high", and "very_high", with thresholds located at
  the quantiles of `vi_numeric`.

- `vi_factor`: `vi_categorical` converted to factor.

**Predictors**

- `koppen_zone` (character): Koppen zone codes from Beck et al. (2018)
  (see References)

- `koppen_group` (character): Koppen group names.

- `koppen_description` (character): Climate description.

- `soil_type` (character): Soil classification type.

- `biogeo_ecoregion` (character): Ecoregion name.

- `biogeo_biome` (character): Biome name.

- `biogeo_realm` (character): Ecological realm name.

- `country_name` (character): Country name.

- `continent` (character): Continent name.

- `region` (character): UN region name.

- `subregion` (character): UN sub-region name.

- `topo_slope`: Topographic slope in degrees.

- `topo_diversity`: Number of combinations of different elevations,
  slopes, and aspects in a radius of 5km around each 1km cell.

- `topo_elevation`: Elevation in meters

- `swi_...`: Annual soil water index stats.

- `solar_rad_...`: Annual radiation stats.

- `temperature_...`: Annual air temperature stats.

- `temperature_seasonality`: Coefficient of variation of monthly air
  temperatures.

- `rainfall_...`: Annual rainfall stats.

- `evapotranspiration_...`: Annual evapotranspiration stats.

- `cloud_cover_...`: Annual cloud cover stats.

- `growing_season_length`: Length of the growing season.

- `growing_season_temperature`: Average temperature of the growing
  season.

- `growing_season_rainfall`: Accumulated rainfall of the growing season.

- `growing_degree_days`: Heat sum of all days above the 0°C temperature
  accumulated over 1 year.

- `aridity_index`: Mean aridity index.

- `humidity_...`: Annual air humidity stats.

- `soil_clay`: Soil clay content.

- `soil_sand`: Soil sand content.

- `soil_silt`: Soil silt content.

- `soil_ph`: Soil pH.

- `soil_soc`: Soil organic carbon content.

- `soil_nitrogen`: Soil nitrogen content.

- `soil_temperature_...`: Annual land surface temperature stats.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

**Data sources**

- **Response variables (NDVI)**: Normalised Difference Vegetation Index
  (Long Term Statistics) 1999-2019 (raster 1 km), global, 10-daily –
  version 3
  (<https://sdi.eea.europa.eu/catalogue/srv/api/records/290e81fb-4c84-42ad-ae12-f663312b0eda>)

- **Koppen Climate**: Beck, H. E. et al., Present and future
  Köppen-Geiger climate classification maps at 1-km resolution. Sci.
  Data. 5:180214
  [doi:10.1038/sdata.2018.214](https://doi.org/10.1038/sdata.2018.214)
  (2018).

- **Soil Water Index**: Generated using European Union's Copernicus Land
  Monitoring Service information;
  [doi:10.2909/290e81fb-4c84-42ad-ae12-f663312b0eda](https://doi.org/10.2909/290e81fb-4c84-42ad-ae12-f663312b0eda)
  .

- **Climate**: Brun, P., Zimmermann, N. E., Hari, C., Pellissier, L.,
  Karger, D. N. (2022). CHELSA-BIOCLIM+ A novel set of global
  climate-related predictors at kilometre-resolution. EnviDat.
  [doi:10.16904/envidat.332](https://doi.org/10.16904/envidat.332) .

- **Soil type and chemistry**: Hengl T, Mendes de Jesus J, Heuvelink
  GBM, Ruiperez Gonzalez M, Kilibarda M, Blagotić A, et al. (2017)
  SoilGrids250m: Global gridded soil information based on machine
  learning. PLoS ONE 12(2): e0169748.
  [doi:10.1371/journal.pone.0169748](https://doi.org/10.1371/journal.pone.0169748)

- **Soil Temperature**: Wan, Z., Hook, S., Hulley, G. (2015). MOD11A2
  MODIS/Terra Land Surface Temperature/Emissivity 8-Day L3 Global 1km
  SIN Grid V006. NASA EOSDIS LP DAAC.
  [doi:10.5067/MODIS/MOD11A2.006](https://doi.org/10.5067/MODIS/MOD11A2.006)
  (Zenodo: <https://zenodo.org/records/1435938>)

- **Ecoregions**: Eric Dinerstein, David Olson, Anup Joshi, Carly Vynne,
  Neil D. Burgess, Eric Wikramanayake, Nathan Hahn, Suzanne Palminteri,
  Prashant Hedao, Reed Noss, Matt Hansen, Harvey Locke, Erle C Ellis,
  Benjamin Jones, Charles Victor Barber, Randy Hayes, Cyril Kormos,
  Vance Martin, Eileen Crist, Wes Sechrest, Lori Price, Jonathan E. M.
  Baillie, Don Weeden, Kierán Suckling, Crystal Davis, Nigel Sizer,
  Rebecca Moore, David Thau, Tanya Birch, Peter Potapov, Svetlana
  Turubanova, Alexandra Tyukavina, Nadia de Souza, Lilian Pintea,
  José C. Brito, Othman A. Llewellyn, Anthony G. Miller, Annette
  Patzelt, Shahina A. Ghazanfar, Jonathan Timberlake, Heinz Klöser, Yara
  Shennan-Farpón, Roeland Kindt, Jens-Peter Barnekow Lillesø, Paulo van
  Breugel, Lars Graudal, Maianna Voge, Khalaf F. Al-Shammari, Muhammad
  Saleem, An Ecoregion-Based Approach to Protecting Half the Terrestrial
  Realm, BioScience, Volume 67, Issue 6, June 2017, Pages 534–545,
  [doi:10.1093/biosci/bix014](https://doi.org/10.1093/biosci/bix014)

- **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E.
  Guevara, 2008, Hole-filled seamless SRTM data V4, International Centre
  for Tropical Agriculture (CIAT), available from
  <https://srtm.csi.cgiar.org>.

- **Aridity**: Zomer, R.J., Xu, J. & Trabucco, A. Version 3 of the
  Global Aridity Index and Potential Evapotranspiration Database. Sci
  Data 9, 409 (2022).
  [doi:10.1038/s41597-022-01493-1](https://doi.org/10.1038/s41597-022-01493-1)

- **Country, continent, region, and subregion**: Natural Earth. Free
  vector and raster map data. <https://www.naturalearthdata.com/>.

## Usage

``` r
data(vi)
```

## Format

sf data.frame

## See also

Other vi:
[`vi_extra()`](https://blasbenito.github.io/spatialData/reference/vi_extra.md),
[`vi_predictors`](https://blasbenito.github.io/spatialData/reference/vi_predictors.md),
[`vi_responses`](https://blasbenito.github.io/spatialData/reference/vi_responses.md)

## Examples

``` r
data(vi)
head(vi)
#>   vi_numeric vi_counts vi_binomial vi_categorical vi_factor koppen_zone
#> 1       0.38       380           0         medium    medium         BSk
#> 2       0.53       530           1           high      high         Cfa
#> 3       0.45       450           0         medium    medium         Dfc
#> 4       0.69       690           1      very_high very_high         Cfb
#> 5       0.42       420           0         medium    medium          Aw
#> 6       0.68       680           1      very_high very_high         Cfa
#>   koppen_group         koppen_description soil_type topo_slope topo_diversity
#> 1         Arid               steppe, cold Cambisols          6             29
#> 2    Temperate  no dry season, hot summer  Acrisols          2             24
#> 3         Cold no dry season, cold summer  Luvisols          0             21
#> 4    Temperate no dry season, warm summer   Alisols         10             25
#> 5     Tropical                   savannah  Gleysols          0             19
#> 6    Temperate  no dry season, hot summer  Acrisols         10             30
#>   topo_elevation swi_mean swi_max swi_min swi_range soil_temperature_mean
#> 1           1821     27.5    62.9    24.5      38.4                   4.8
#> 2            143     56.1    74.4    33.3      41.2                  19.9
#> 3            765     41.4    81.9    42.2      39.7                   1.2
#> 4           1474     59.3    81.1    31.3      49.8                  13.0
#> 5            378     37.4    83.2     8.3      74.9                  28.2
#> 6            485     56.3    73.8    28.8      45.0                  18.1
#>   soil_temperature_max soil_temperature_min soil_temperature_range soil_sand
#> 1                 29.9                -12.4                   42.3        41
#> 2                 32.6                  3.9                   28.8        39
#> 3                 20.4                -16.0                   36.4        27
#> 4                 24.6                 -0.4                   25.0        29
#> 5                 41.6                 16.8                   24.8        48
#> 6                 29.1                  4.1                   24.9        33
#>   soil_clay soil_silt soil_ph soil_soc soil_nitrogen solar_rad_mean
#> 1        20        38     6.5     43.1           2.8         17.634
#> 2        24        35     5.9     14.6           1.3         19.198
#> 3        28        43     5.6     36.4           2.9         13.257
#> 4        31        38     5.5     34.9           3.6         14.163
#> 5        27        23     6.5      8.1           1.2         24.512
#> 6        29        36     5.8     20.8           1.9         17.335
#>   solar_rad_max solar_rad_min solar_rad_range growing_season_length
#> 1        31.317         5.209          26.108                   139
#> 2        24.498        13.311          11.187                   365
#> 3        25.283         1.587          23.696                   164
#> 4        17.237         9.642           7.595                   333
#> 5        28.038        19.102           8.936                   228
#> 6        22.400        12.196          10.204                   365
#>   growing_season_temperature growing_season_rainfall growing_degree_days
#> 1                      12.65                   224.5              2140.5
#> 2                      19.35                  1493.4              7080.9
#> 3                      11.55                   345.4              2053.2
#> 4                      12.45                  1765.5              4162.9
#> 5                      26.45                   984.4             10036.7
#> 6                      17.75                  1860.5              6475.0
#>   temperature_mean temperature_max temperature_min temperature_range
#> 1             3.65           24.65          -14.05              38.7
#> 2            19.35           33.35            3.05              30.3
#> 3             1.45           21.15          -18.25              39.4
#> 4            11.35           23.75           -3.55              27.3
#> 5            27.55           38.35           19.15              19.2
#> 6            17.65           30.55            2.45              28.1
#>   temperature_seasonality rainfall_mean rainfall_min rainfall_max
#> 1                   882.6           446           25           62
#> 2                   786.6          1493           37          209
#> 3                  1070.9           560           24           87
#> 4                   724.7          1794           29          293
#> 5                   219.3           990            0          226
#> 6                   747.2          1860           60          275
#>   rainfall_range evapotranspiration_mean evapotranspiration_max
#> 1             37                   78.32                 164.70
#> 2            172                  105.88                 190.86
#> 3             63                   50.03                 117.53
#> 4            264                   64.65                 115.79
#> 5            226                  156.60                 187.71
#> 6            215                  108.50                 191.31
#>   evapotranspiration_min evapotranspiration_range cloud_cover_mean
#> 1                  13.67                   151.03               31
#> 2                  50.44                   140.42               48
#> 3                   3.53                   113.99               42
#> 4                  28.01                    87.79               64
#> 5                 128.59                    59.13               38
#> 6                  51.39                   139.92               52
#>   cloud_cover_max cloud_cover_min cloud_cover_range aridity_index humidity_mean
#> 1              39              16                23          0.54         55.56
#> 2              61              34                27          1.27         62.14
#> 3              49              33                15          0.90         59.87
#> 4              71              54                17          2.08         69.32
#> 5              58              19                38          0.55         51.60
#> 6              67              39                27          1.67         62.76
#>   humidity_max humidity_min humidity_range
#> 1        63.98        48.41          15.57
#> 2        65.00        58.97           6.03
#> 3        68.19        53.75          14.44
#> 4        71.90        67.21           4.69
#> 5        67.07        33.89          33.18
#> 6        65.68        59.92           5.76
#>                              biogeo_ecoregion
#> 1               South Central Rockies forests
#> 2      Jian Nan subtropical evergreen forests
#> 3  Alberta-British Columbia foothills forests
#> 4 Guizhou Plateau broadleaf and mixed forests
#> 5                       East Sudanian savanna
#> 6      Jian Nan subtropical evergreen forests
#>                                               biogeo_biome biogeo_realm
#> 1                                Temperate Conifer Forests     Nearctic
#> 2           Tropical & Subtropical Moist Broadleaf Forests  Indomalayan
#> 3                                Temperate Conifer Forests     Nearctic
#> 4           Tropical & Subtropical Moist Broadleaf Forests   Palearctic
#> 5 Tropical & Subtropical Grasslands, Savannas & Shrublands   Afrotropic
#> 6           Tropical & Subtropical Moist Broadleaf Forests  Indomalayan
#>               country_name     continent   region        subregion
#> 1 United States of America North America Americas Northern America
#> 2                    China          Asia     Asia     Eastern Asia
#> 3                   Canada North America Americas Northern America
#> 4                    China          Asia     Asia     Eastern Asia
#> 5                     Chad        Africa   Africa    Middle Africa
#> 6                    China          Asia     Asia     Eastern Asia
#>               geometry
#> 1 -114.25431, 45.05403
#> 2  114.84569, 26.27069
#> 3 -122.14597, 56.37903
#> 4  108.37069, 29.94569
#> 5  19.095694, 9.262361
#> 6  111.72903, 25.77903
```
