# CRAN Submission TODO

Items you must complete before submitting spatialData to CRAN.

---

## Blocking (must fix before submission)

- [ ] **Provide real Zenodo DOI** — `inst/CITATION` currently has
  `doi = "10.5281/zenodo.XXXXXXX"`. Deposit the package on Zenodo
  (https://zenodo.org), then replace the placeholder with the real DOI.

## Checks to run and record in `cran-comments.md`

- [ ] Run `devtools::check()` locally — must be 0 errors, 0 warnings, ≤ 1 note
  (the "New submission" note is expected and acceptable).
- [ ] Run `devtools::check_win_devel()` — tests on Windows R-devel.
  Results arrive by email; paste relevant output into `cran-comments.md`.
- [ ] Run `rhub::check_for_cran()` — tests on Linux and macOS.
  Paste relevant output into `cran-comments.md`.

## Quality checks (strongly recommended)

- [ ] Run `spelling::spell_check_package()`. Add legitimate technical terms
  (species names, acronyms) to `inst/WORDLIST` to suppress false positives.
- [ ] Run `urlchecker::url_check()`. Fix any broken or redirected URLs in
  Roxygen docs and vignettes.

## Repository hygiene

- [ ] `andalusia_env.tif` at the repo root was created by running
  `andalusia_extra()` while the working directory was the package folder.
  Now that `andalusia_extra()` writes to `tools::R_user_dir("spatialData")`,
  this file will not be recreated there. Either delete it or add
  `^andalusia_env\.tif$` to `.gitignore` if you want to keep it locally.

## After all checks pass

- [ ] Fill in `cran-comments.md` with actual check results from the steps above.
- [ ] Submit via `devtools::release()` or the CRAN web form at
  https://cran.r-project.org/submit.html.
