# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Datasets

Always read each dataset's `R/<dataset>.R` file before writing any description of it.

## Critical Safety Rules

**FILE DELETION**: Never delete, remove, or `rm` any file without explicit user confirmation. This includes:
- Source files
- Test files  
- Configuration files
- "Temporary" or "backup" files

When deletion seems appropriate, ASK FIRST and explain why.

## Package Overview

spatialData is a data-only R package providing spatial datasets for ecological and environmental analysis. It contains pre-processed datasets with response variables and predictors for use in examples and tutorials.

## Essential Commands

```r
# Load package for interactive testing
dev_load()

# Quick check after changes (updates docs + runs R CMD check)
dev_check_quick()

# Run tests only
test_run()

# Comprehensive check before committing (CRAN-level)
dev_check_complete()

# Build documentation
devtools::document()

# Build README from README.Rmd
build_readme()
```

All `dev_*`, `test_*`, `build_*`, and `check_*` functions are auto-loaded from the dev/ folder when R starts (via .Rprofile).

## Package Structure

- **R/data.R** - Roxygen2 documentation for all datasets
- **data/*.rda** - Compressed dataset files (LazyData enabled with xz compression)
- **dev_scripts/** - Data generation scripts (not part of package)

## Key Datasets

- `plants` / `plants_response` / `plants_predictors` - Plant richness data for American ecoregions
- `vi` / `vi_predictors` / `vi_predictors_numeric` / `vi_predictors_categorical` - Global NDVI records with environmental predictors

## Roxygen2 Requirements

This package uses roxyglobals for automatic global variable detection. Every function must include:
- `@autoglobal` tag (mandatory)
- Parameter format: `@param name (required/optional, type) Description`
- Specific return type descriptions

## Code Quality Tools

- **jarl** - Rust-based linter (140x faster than lintr), run with `jarl lint R/`
- **air** - Code formatter, run with `air format .`
- Pre-commit hook runs: jarl lint → air format → devtools::document() → devtools::check()

## Vignette Style Guide

All vignettes in `vignettes/articles/` follow a shared structure. When creating or
editing a vignette, follow every convention below.

### YAML Front Matter

```yaml
---
title: "Descriptive title of dataset and analysis"
output:
  rmarkdown::html_document:
    toc: true
    toc_title: "Contents"
---
```

### Chunk Options (first chunk, `include = FALSE`, placed before `## Overview`)

```r
knitr::opts_chunk$set(
  eval      = TRUE,
  collapse  = TRUE,
  comment   = "#>",
  out.width = "100%"
)
```

### Package Installation (second chunk, inside `## Setup`, `include = FALSE`)

```r
if (!requireNamespace("pak", quietly = TRUE)) install.packages("pak")
pak::pkg_install(c("pkg1", "pkg2", ...), ask = FALSE)
```

### Library + Data Loading (`message = FALSE, warning = FALSE, echo = FALSE`, inside `## Setup`)

Libraries grouped by role in this order: data wrangling → spatial processing →
modelling → mapping/plotting → `spatialData` (always last).

Data loaded in the same chunk:

```r
data(dataset_name, dataset_responses, dataset_predictors, package = "spatialData")
```

### Fixed Section Order

Overview → Setup → Data Structure → Example Usage → Conclusion

- **Overview**: ecological context, dataset purpose, key features.
- **Setup**: pak install chunk + libraries/data chunk (knitr opts chunk comes before
  `## Overview`, not here).
- **Data Structure**: inline `r nrow()`/`r ncol()`, `dplyr::glimpse()`, response
  description, `mapview::mapview()` interactive map, predictor names printed.
- **Example Usage**: intro paragraph + bullet list of subsections. Always starts
  with a **Multicollinearity Filtering** subsection using `collinear::collinear()`.
- **Conclusion**: synthesis paragraph, always ends with `Happy modelling!`

### Class Imbalance

Use `collinear::case_weights()` whenever response classes are unbalanced (always
the case for presence/background and multi-species datasets).

### Spatial Predictions

```r
terra::predict(object = raster, model = model, type = "response", na.rm = TRUE)
plot(x = raster, col = viridis::turbo(n = 100))
```

### `f_*` Function Selection for `collinear::collinear()`

| Response type        | `f` argument                  |
|----------------------|-------------------------------|
| Binary (0/1), GAM    | `collinear::f_binomial_gam`   |
| Binary (0/1), RF     | `collinear::f_binomial_rf`    |
| Continuous, RF       | `collinear::f_numeric_rf`     |
| Count, RF            | `collinear::f_count_rf`       |
| Categorical, RF      | `collinear::f_categorical_rf` |
