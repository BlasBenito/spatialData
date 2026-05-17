## Resubmission

This is a maintenance release (1.0.1) addressing the following:

- Fixed an incorrect DOI in `R/plantae.R` and `README.md`.
- The dataset `vi_smol` was shipped as a regular dataframe in version 1.0.0, and is now an `sf` dataframe in 1.0.1.
- `plantae_extra()`, `vi_extra()`, and `trees_extra()` now cache their result in memory for the duration of the R session, avoiding repeated disk reads of large GeoPackage files within the same session.

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

## R CMD check results

Duration: 15.9s

0 errors ✔ | 0 warnings ✔ | 0 notes ✔

## Test environments

* Local: Ubuntu 24.04, R 4.5.0

## Downstream dependencies

None.
