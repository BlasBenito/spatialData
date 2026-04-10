# TODO

## Datasets

### plantae
- [ ] R/plantae.R
  - All objects documented (plantae, plantae_responses, plantae_predictors, plantae_extra, plantae_west, plantae_east)
  - 13 source citations present, all with DOIs/URLs — verify none are dead links
- [ ] vignettes/articles/plantae.Rmd
  - Section called "Description" instead of "Data Structure" — check style guide conformance
  - Missing "Happy modelling!" closing phrase at end of Conclusion
  - `collinear::f_count_rf` used (correct for count response `richness_species`)

### vi
- [ ] R/vi.R
  - All objects documented (vi, vi_responses, vi_predictors, vi_extra)
  - 10 source citations, all with DOIs/URLs
- [ ] vignettes/articles/vi.Rmd
  - Missing formal "Conclusion" section header (ends abruptly)
  - Missing "Happy modelling!" closing phrase
  - `collinear::f_numeric_rf` used (correct for continuous response)

### trees
- [ ] R/trees.R
  - Clear note that species list is BIOTREE-NET (NOT total tree species) — verify note is prominent
  - 8 source citations, all present
- [ ] vignettes/articles/trees.Rmd
  - Section called "Description" instead of "Data Structure"
  - Missing formal "Predictor Variables" section header
  - Missing "Happy modelling!" closing phrase
  - `collinear::f_numeric_rf` used (correct for log-transformed count)

### andalusia
- [x] R/andalusia.R
- [ ] vignettes/articles/andalusia.Rmd
  - case_weights correctly applied per-species before GLM fitting
  - `collinear::f_binomial_gam` used (correct for binary response)
  - Missing "Happy modelling!" closing phrase

### quercus
- [ ] R/quercus.R
  - bio8 and bio9 excluded from WorldClim — verify exclusion is documented and explained
  - 8 source citations present
- [ ] vignettes/articles/quercus.Rmd
  - case_weights correctly applied for imbalanced multi-class oak species
  - `collinear::f_categorical_rf` used (correct for multi-class response)
  - Missing "Happy modelling!" closing phrase

### communities
- [ ] R/communities.R
  - CRITICAL: Only 1 source citation (Benito et al. 2011) — missing sources for baseline climate data, topography, and 2050/2100 climate scenario rasters
  - Consider adding @source entries for climate and topographic data providers
- [ ] vignettes/articles/communities.Rmd
  - Section titled "Example" instead of "Example Usage"
  - Missing explicit `collinear::collinear()` call with appropriate `f_*` function (should use `f_categorical_rf`)
  - case_weights correctly applied for ranger model
  - Missing "Happy modelling!" closing phrase

### neanderthal
- [ ] R/neanderthal.R
  - Temporal context (Marine Isotope Stage 5e / Last Interglacial) clearly documented
  - 4 source citations present
- [ ] vignettes/articles/neanderthal.Rmd
  - case_weights correctly shown and applied in quasibinomial GAM
  - `collinear::f_binomial_gam` used (correct for binary response)
  - Missing "Happy modelling!" closing phrase

### linaria
- [ ] R/linaria.R
  - Three-way distinction (plant presence, greenhouse presence, background) clearly documented
  - 5 source citations present
- [ ] vignettes/articles/linaria.Rmd
  - Missing explicit `collinear::collinear()` filtering step before maxnet modelling
  - case_weights not needed (maxnet handles presence/background internally)
  - Missing "Happy modelling!" closing phrase

### interaction
- [ ] R/interaction.R
  - Row count NOT documented — add exact number of rows to @format
  - Geometry type not explicitly stated — add POINT geometry and CRS
  - Solar radiation units use `\eqn{}` notation — verify it renders correctly in HTML docs
  - 4 source citations present
- [ ] vignettes/articles/interaction.Rmd
  - Sequential two-stage SDM: `f_binomial_rf` used for both host plant and butterfly (correct)
  - case_weights not explicitly shown in the code workflow (handled implicitly by spatialRF::rf)
  - Missing "Happy modelling!" closing phrase

## Standalone Files

- [ ] README.Rmd
  - Typo in andalusia row: "presences and and" — fix duplicate word
  - All 9 datasets present in table — verify count matches current package
  - Badge links to correct GitHub Actions workflow
- [ ] DESCRIPTION
  - All fields clean and consistent
  - Version 0.0.1 — matches NEWS.md
- [ ] NEWS.md
  - All 9 datasets mentioned — verify none are missing
  - Version header (0.0.1) matches DESCRIPTION
- [ ] cran-comments.md
  - Test environment details are BLANK (local, win-builder, mac-builder, R-hub sections all empty)
  - Must fill in R versions tested, OS details, and outcomes before CRAN submission
- [ ] inst/CITATION
  - DOI is a placeholder: `10.5281/zenodo.XXXXXXX` — replace with actual Zenodo DOI once deposited
  - Title, author, year, and URL are consistent with DESCRIPTION
