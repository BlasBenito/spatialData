## Resubmission

This is a maintenance release (1.0.1) addressing the following:

- Fixed an incorrect DOI in `R/plantae.R` and `README.md`.
- The dataset `vi_smol` was shipped as a regular dataframe in version 1.0.0, and is now an `sf` dataframe in 1.0.1.
- `plantae_extra()`, `vi_extra()`, and `trees_extra()` now cache their result in memory for the duration of the R session, avoiding repeated disk reads of large GeoPackage files within the same session.

## Local R CMD check results (Ubuntu 24.04, R 4.5.0)

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

## Winbuilder

Status: OK

## R-hub checks

URL: https://github.com/BlasBenito/spatialData/actions/runs/25984491774

Checked on 20 platforms: linux, macos-arm64, windows, atlas, c23, clang-asan, clang16, clang17, clang18, clang19, gcc13, gcc14, intel, mkl, nold, nosuggests, ubuntu-clang, ubuntu-gcc12, ubuntu-next, ubuntu-release.

- **19 platforms**: 0 errors | 0 warnings | 0 notes
- **clang-asan**: Failed to install the `terra` dependency due to an undefined symbol in `terra.so` related to GDAL (`_ZNK9GDALGroup14ResolveMDArrayE...`). This is likely a infrastructure issue with `terra` on `clang-asan` and it is unrelated to this package.

## Test results

> devtools::test()
ℹ Testing spatialData
✔ | F W  S  OK | Context
✔ |          7 | andalusia                      
✔ |          7 | communities                    
✔ |          7 | interaction                    
✔ |          7 | linaria                        
✔ |          7 | neanderthal                    
✔ |         14 | plantae                        
✔ |          7 | quercus                        
✔ |          7 | trees                          
✔ |         10 | vi                             

══ Results ═════════════════════════════════════
[ FAIL 0 | WARN 0 | SKIP 0 | PASS 73 ]

## Downstream dependencies

None.
