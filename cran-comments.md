## Resubmission

- removed the file LICENSE from the package.
- edited the "License" section in DESCRIPTION to: License: CC BY 4.0

## R CMD check results

── R CMD check results ───────────────────────────────── spatialData 1.0.0 ────
Duration: 53.8s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

R CMD check succeeded

* This is a new submission.

## Notes

* checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Blas M. Benito <blasbenito@gmail.com>'
  New submission

  License components with restrictions and base license permitting such:
  CC BY 4.0 + file LICENSE
  File 'LICENSE':
    Creative Commons Attribution 4.0 International (CC BY 4.0)
  Explanation: CC BY 4.0 is an open license permitting redistribution with
  attribution. The full license text is included in LICENSE.md. This choice
  reflects that the package primarily distributes curated spatial datasets
  derived from publicly available sources.

## Test environments

* winbuilder: 1 NOTE, New submission
* rhub (Linux containers): atlas, c23, clang16, clang17, clang18, gcc13, gcc14, intel, mkl, nold, nosuggests, ubuntu-clang, ubuntu-gcc12, ubuntu-release — all passed (0 errors, 0 warnings, 0 notes)
* rhub: linux (R-devel) — passed
* rhub: macos-arm64 (R-devel) — passed
* rhub: ubuntu-next, clang-asan, clang19, windows (R-devel) — failed during dependency setup (r-hub infrastructure issue unrelated to the package; identical step, same exit code 1 on all four)

## Downstream dependencies

None. This is a new package.
