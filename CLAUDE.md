# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

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
