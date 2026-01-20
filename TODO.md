# TODO: Documentation Fixes for spatialData

## Critical Issues

### 1. `plants` dataset (R/data.R lines 1-30)

- [ ] **Wrong dimensions**: Documents "227 rows and 22 columns" but actual data has 227 rows and 20 columns
- [ ] **Missing sf class**: Data is an `sf` object with POINT geometry, not just a data.frame
- [ ] **Remove `x` and `y` columns**: These don't exist; coordinates are in `geometry` column
- [ ] **Add `geometry` column**: Document the sf geometry column (POINT, WGS84/EPSG:4326)
- [ ] **Fix column order in itemize**: Listed columns don't match actual order in data

**Actual columns (20):**
1. ecoregion_id
2. richness_species_vascular
3. bias_area_km2
4. bias_species_per_record
5. climate_aridity_index_average
6. climate_hypervolume
7. climate_velocity_lgm_average
8. neighbors_count
9. neighbors_percent_shared_edge
10. human_population_density
11. topography_elevation_average
12. landcover_herbs_percent_average
13. fragmentation_cohesion
14. fragmentation_division
15. neighbors_area
16. human_population
17. human_footprint_average
18. climate_bio1_average
19. climate_bio15_minimum
20. geometry (sfc_POINT)

### 2. `vi` dataset (R/data.R lines 47-67)

- [ ] **Add @title tag**: Currently missing proper title
- [ ] **Document `longitude` and `latitude` columns**: These exist but aren't mentioned
- [ ] **Add column descriptions**: Only response variables are described; 58 predictor columns are undocumented

**Actual columns (65):**
- Coordinates: longitude, latitude
- Response variables (5): vi_numeric, vi_counts, vi_binomial, vi_categorical, vi_factor
- Predictors (58): koppen_zone, koppen_group, koppen_description, soil_type, topo_slope, topo_diversity, topo_elevation, swi_mean, swi_max, swi_min, swi_range, soil_temperature_mean, soil_temperature_max, soil_temperature_min, soil_temperature_range, soil_sand, soil_clay, soil_silt, soil_ph, soil_soc, soil_nitrogen, solar_rad_mean, solar_rad_max, solar_rad_min, solar_rad_range, growing_season_length, growing_season_temperature, growing_season_rainfall, growing_degree_days, temperature_mean, temperature_max, temperature_min, temperature_range, temperature_seasonality, rainfall_mean, rainfall_min, rainfall_max, rainfall_range, evapotranspiration_mean, evapotranspiration_max, evapotranspiration_min, evapotranspiration_range, cloud_cover_mean, cloud_cover_max, cloud_cover_min, cloud_cover_range, aridity_index, humidity_mean, humidity_max, humidity_min, humidity_range, biogeo_ecoregion, biogeo_biome, biogeo_realm, country_name, continent, region, subregion

### 3. `vi_responses` dataset (R/data.R lines 69-76)

- [ ] **Data file does not exist**: `vi_responses.rda` is documented but not present in data/
- [ ] Either create the data file or remove the documentation

---

## Consistency Issues

- [ ] **Inconsistent @family tags**: `plants*` datasets use `@family data`, `vi*` datasets use `@family example_data`. Unify to one family or create meaningful groupings.
- [ ] **Missing @source tags**: No data source attributions for any dataset. Add sources for GBIF, Ecoregions 2017, etc.

---

## Summary

| Dataset | File Exists | Doc Accurate | Priority |
|---------|-------------|--------------|----------|
| plants | Yes | No (structure issues) | HIGH |
| plants_response | Yes | Yes | OK |
| plants_predictors | Yes | Yes | OK |
| vi | Yes | No (missing descriptions) | HIGH |
| vi_responses | **NO** | N/A | HIGH |
| vi_predictors | Yes | Yes | OK |
| vi_predictors_numeric | Yes | Yes | OK |
| vi_predictors_categorical | Yes | Yes | OK |
