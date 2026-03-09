# Neanderthal Presence and Pseudo-Absence Records with Environmental Predictors

`sf` data frame with `POINT` geometry containing 245 records of
Neanderthal presence and pseudo-absence sites from Marine Isotope Stage
5e (Last Interglacial) in Europe and the Near East, 1 response variable
(see
[neanderthal_response](https://blasbenito.github.io/spatialData/reference/neanderthal_response.md)),
and 25 predictors (see
[neanderthal_predictors](https://blasbenito.github.io/spatialData/reference/neanderthal_predictors.md)).
Use
[`neanderthal_extra()`](https://blasbenito.github.io/spatialData/reference/neanderthal_extra.md)
to download the associated environmental raster.

## Usage

``` r
data(neanderthal)
```

## Format

An sf data frame with 245 rows (presence and pseudo-absence sites) and
27 columns:

**Response variable (1):**

- `presence`: Binary integer (1 = Neanderthal presence site, 0 =
  pseudo-absence site).

**Predictor variables - Palaeoclimatic (19):**

Bioclimatic variables derived from a Last Interglacial GCM simulation
(Otto-Bliesner et al. 2006), downscaled following the method of Hijmans
et al. (2005). These are analogous to the standard WorldClim bioclimatic
variables but represent Last Interglacial (MIS 5e) conditions rather
than modern climate:

- `bio1`: Annual mean temperature (degrees C).

- `bio2`: Mean diurnal range (degrees C).

- `bio3`: Isothermality (bio2/bio7 \* 100).

- `bio4`: Temperature seasonality (standard deviation \* 100).

- `bio5`: Max temperature of warmest month (degrees C).

- `bio6`: Min temperature of coldest month (degrees C).

- `bio7`: Temperature annual range (degrees C).

- `bio8`: Mean temperature of wettest quarter (degrees C).

- `bio9`: Mean temperature of driest quarter (degrees C).

- `bio10`: Mean temperature of warmest quarter (degrees C).

- `bio11`: Mean temperature of coldest quarter (degrees C).

- `bio12`: Annual precipitation (mm).

- `bio13`: Precipitation of wettest month (mm).

- `bio14`: Precipitation of driest month (mm).

- `bio15`: Precipitation seasonality (coefficient of variation).

- `bio16`: Precipitation of wettest quarter (mm).

- `bio17`: Precipitation of driest quarter (mm).

- `bio18`: Precipitation of warmest quarter (mm).

- `bio19`: Precipitation of coldest quarter (mm).

**Predictor variables - Topography (6):**

- `topo_aspect`: Aspect in degrees.

- `topo_diversity_local`: Local topographic diversity.

- `topo_diversity`: Regional topographic diversity.

- `topo_elev`: Elevation in meters.

- `topo_slope`: Slope in degrees.

- `topo_wetness`: Topographic wetness index.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

## Source

**Presence data:**

- Benito, B.M., et al. (2017). The ecological niche and distribution of
  Neanderthals during the Last Interglacial. *Journal of Biogeography*,
  44, 51-61. [doi:10.1111/jbi.12845](https://doi.org/10.1111/jbi.12845)

**Palaeoclimatic variables (GCM simulation):**

- Otto-Bliesner, B.L., Marshall, S.J., Overpeck, J.T., Miller, G.H. &
  Hu, A. (2006). Simulating arctic climate warmth and icefield retreat
  in the last interglaciation. *Science*, 311, 1751-1753.

**Palaeoclimatic variables (interpolation):**

- Hijmans, R.J., Cameron, S.E., Parra, J.L., Jones, P.G. & Jarvis, A.
  (2005). Very high resolution interpolated climate surfaces for global
  land areas. *International Journal of Climatology*, 25, 1965-1978.

**Elevation and topography:**

- Jarvis, A., Reuter, H.I., Nelson, A., & Guevara, E. (2008).
  Hole-filled seamless SRTM data V4. International Centre for Tropical
  Agriculture (CIAT). <https://srtm.csi.cgiar.org>

## See also

Other neanderthal:
[`neanderthal_extra()`](https://blasbenito.github.io/spatialData/reference/neanderthal_extra.md),
[`neanderthal_predictors`](https://blasbenito.github.io/spatialData/reference/neanderthal_predictors.md),
[`neanderthal_response`](https://blasbenito.github.io/spatialData/reference/neanderthal_response.md)
