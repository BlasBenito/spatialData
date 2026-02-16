# Neanderthal Presence and Pseudo-Absence Records with Environmental Predictors

`sf` dataframe with `POINT` geometry containing 245 records of
Neanderthal presence and pseudo-absence sites from Marine Isotope Stage
5e (Last Interglacial) in Europe and the Near East, 1 response variable
(see
[neanderthal_response](https://blasbenito.github.io/spatialData/reference/neanderthal_response.md)),
and 25 predictors (see
[neanderthal_predictors](https://blasbenito.github.io/spatialData/reference/neanderthal_predictors.md)).
Use
[`neanderthal_extra()`](https://blasbenito.github.io/spatialData/reference/neanderthal_extra.md)
to download the associated environmental raster.

**Response**

The response variable `presence` is a binary integer:

- `1`: Neanderthal presence site.

- `0`: Pseudo-absence site.

**Predictors**

- `bio1`, `bio2`, ..., `bio19`: Palaeoclimatic variables from a Last
  Interglacial GCM simulation (19 variables).

- `topo_aspect`, `topo_diversity_local`, `topo_diversity`, `topo_elev`,
  `topo_slope`, `topo_wetness`: SRTM-derived topographic variables.

**Geometry:**

- `geometry`: Point geometry (WGS84, EPSG:4326).

**Data sources**

- **Presence data**: Benito, B.M., Svenning, J.-C., Kellberg-Nielsen,
  T., Riede, F., Gil-Romera, G., Mailund, T., Kjaergaard, P.C. and
  Sandel, B.S. (2017), The ecological niche and distribution of
  Neanderthals during the Last Interglacial. J. Biogeogr., 44: 51-61.
  [doi:10.1111/jbi.12845](https://doi.org/10.1111/jbi.12845)

- **Palaeoclimatic variables (GCM simulation)**: Otto-Bliesner, B.L.,
  Marshall, S.J., Overpeck, J.T., Miller, G.H. & Hu, A. (2006)
  Simulating arctic climate warmth and icefield retreat in the last
  interglaciation. Science, 311, 1751-1753.

- **Palaeoclimatic variables (interpolation)**: Hijmans, R.J., Cameron,
  S.E., Parra, J.L., Jones, P.G. & Jarvis, A. (2005) Very high
  resolution interpolated climate surfaces for global land areas.
  International Journal of Climatology, 25, 1965-1978.

- **Elevation and topography**: Jarvis A., H.I. Reuter, A. Nelson, E.
  Guevara, 2008. Hole-filled seamless SRTM data V4, International Centre
  for Tropical Agriculture (CIAT). <https://srtm.csi.cgiar.org>.

## Usage

``` r
data(neanderthal)
```

## Format

sf data.frame

## See also

Other neanderthal:
[`neanderthal_extra()`](https://blasbenito.github.io/spatialData/reference/neanderthal_extra.md),
[`neanderthal_predictors`](https://blasbenito.github.io/spatialData/reference/neanderthal_predictors.md),
[`neanderthal_response`](https://blasbenito.github.io/spatialData/reference/neanderthal_response.md)

## Examples

``` r
data(neanderthal)
head(neanderthal)
#>   presence      bio1    bio10      bio11     bio12     bio13    bio14    bio15
#> 1        1  93.90861 230.8535 -40.628402 1016.7842 124.79270 42.96014 28.78959
#> 2        1 101.39613 193.2386  19.409437  634.9449  86.20893 20.12042 34.29474
#> 3        1  98.43701 196.0572   7.986982  651.3601  78.12757 23.64688 27.51153
#> 4        1  80.31912 208.2075 -47.536219  481.9939  64.77663 17.51916 40.68027
#> 5        1  67.72340 193.7100 -58.747138  598.3581  79.24467 20.10602 36.12821
#> 6        1  68.12418 194.3866 -58.645062  585.9924  78.32549 18.45945 37.62780
#>      bio16     bio17    bio18     bio19      bio2     bio3      bio4     bio5
#> 1 321.4307 141.42826 306.9939 174.55667 107.35804 24.97327 10434.941 315.4290
#> 2 235.2489 103.49764 125.2365 150.36287  80.55478 29.14201  6795.361 259.6066
#> 3 220.1406 107.45727 155.5902 140.85947  86.42271 29.00000  7319.844 268.1590
#> 4 189.4942  59.94072 179.1978  60.03907 101.75828 24.82866  9877.545 290.8134
#> 5 228.7584  84.45648 213.6227  84.46595 100.36624 24.62171  9766.644 275.5202
#> 6 226.4233  79.33206 211.8389  79.33206 100.59339 24.64222  9783.674 276.1784
#>         bio6     bio7      bio8      bio9 topo_aspect topo_diversity_local
#> 1 -109.91492 425.3439 219.38774 -23.84609    203.3782            7.1118334
#> 2  -12.30346 271.9101  95.26432  52.21129    149.0069            6.2437519
#> 3  -26.61051 294.7695  89.37619  49.78763    169.8406            1.2860197
#> 4 -115.37669 406.1901 200.24822 -41.15274    142.4552           -3.1426907
#> 5 -126.30713 401.8273 186.69976 -58.28512    149.4695           -0.7197864
#> 6 -126.21360 402.3920 187.08380 -58.64506    144.3962           -1.1548102
#>   topo_diversity topo_elev topo_slope topo_wetness         geometry
#> 1       78.13295 240.97322  2.0600362    -3.142004 15.8632, 46.1654
#> 2       74.73658  62.10563  0.9570366    -3.236383  1.8785, 50.1305
#> 3       73.03239  32.56124  0.3261872    -1.925804  3.1131, 50.3869
#> 4       67.50587 110.95158  1.3632851    -3.006190 11.8997, 51.3244
#> 5       71.77473 348.35149  1.3541036    -4.243113 11.3772, 50.9508
#> 6       71.21040 341.12146  1.2360403    -4.344711 11.3239, 50.9806
```
