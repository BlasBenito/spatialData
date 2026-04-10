# CRAN Policy Summary for spatialData

Reference for CRAN submission. Based on CRAN Repository Policy
(https://cran.r-project.org/web/packages/policies.html) as of 2026.

---

## Prohibited Actions (hard reject)

- **Writing outside `tempdir()`** without user consent. Use `tools::R_user_dir()`
  for persistent caches (user opted in by calling the function) or `tempdir()` for
  session-only files.
- **Requiring internet access** for package load, `NAMESPACE`, or examples that
  run during `R CMD check`. Network calls must be in functions users call
  explicitly (e.g. `*_extra()` download helpers) or wrapped in
  `\donttest{}` / `if (interactive())`.
- **Modifying the user's R environment** (options, `.GlobalEnv`, search path)
  without explicit consent and without restoring on exit.
- **Installing packages** from within package code.
- **`system()` / `system2()` calls** that affect state outside the R session.

## DESCRIPTION Requirements

| Field | Rule |
|-------|------|
| `Title` | Title Case; no period at end; no package name redundancy |
| `Description` | Full sentences; no URLs; must end with `.` |
| `Authors@R` | Use `person()` with roles `"aut"`, `"cre"`, valid email |
| `URL` | Comma-separated; all must be reachable |
| `BugReports` | Must be a direct issue-tracker URL |
| `License` | Must be a CRAN-accepted SPDX identifier or `file LICENSE` |
| `Version` | `X.Y.Z` format (no date or git hash) |
| `Depends` | Only use for packages users attach; prefer `Imports` |
| `Suggests` | Packages used only in tests/vignettes/examples |

## Documentation Requirements

- Every exported function needs `@return` and at least one `@examples` entry.
- Use `\donttest{}` (not `\dontrun{}`) for examples that require internet or
  take > 5 seconds. CRAN runs `\donttest{}` examples during incoming checks.
- Dataset documentation (`"datasetname"` strings) needs `@usage data(x)` and
  `@format` describing columns.
- No unexported functions in `NAMESPACE`.

## License

CC BY 4.0 is an accepted open license. Include the full text in `LICENSE.md`
and a one-line pointer in `LICENSE`. Ensure `inst/CITATION` DOI is real before
submission.

## File Writing / Caching Pattern (CRAN-compliant)

```r
my_download_fn <- function() {
  cache_dir <- tools::R_user_dir("spatialData", which = "data")
  dir.create(cache_dir, recursive = TRUE, showWarnings = FALSE)
  path <- file.path(cache_dir, "file.ext")
  if (!file.exists(path)) {
    utils::download.file(url, path, mode = "wb", quiet = TRUE)
  }
  terra::rast(path)   # or sf::st_read(), etc.
}
```

`tools::R_user_dir()` resolves to an OS-appropriate user data directory
(respects `XDG_DATA_HOME` on Linux, `~/Library/Application Support` on macOS,
`%APPDATA%` on Windows). CRAN considers this acceptable because the user
explicitly called the function.

## Testing

- Tests must pass on all major platforms (Linux, macOS, Windows).
- Tests that require internet must be skipped on CRAN:
  ```r
  testthat::skip_on_cran()
  ```
- `testthat` edition 3 (`Config/testthat/edition: 3` in DESCRIPTION).
- Keep total test time under 10 minutes on CRAN.

## Multi-Platform Check Workflow Before Submission

1. `devtools::check()` locally — 0 errors, 0 warnings, ≤ 1 note (new submission)
2. `devtools::check_win_devel()` — Windows R-devel
3. `rhub::check_for_cran()` — multiple platforms
4. `spelling::spell_check_package()` — update `inst/WORDLIST` for jargon
5. `urlchecker::url_check()` — validate all URLs in docs

## Submission

- Use `devtools::release()` or submit `.tar.gz` at
  https://cran.r-project.org/submit.html
- `cran-comments.md` must be in the source repo (already in `.Rbuildignore`).
- Re-submission after rejection: address **all** reviewer comments and add a
  "Resubmission" section to `cran-comments.md` explaining each change.
